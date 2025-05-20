#!/bin/bash
# Comprehensive fix script for Hugo site on Netlify
# This script handles submodule fixes, missing shortcodes, and RSSLink deprecation

# Exit on error
set -e

echo "Starting comprehensive fix script..."

# ----- PART 1: SUBMODULE FIX -----
echo "PART 1: Fixing theme submodule..."

# Check if .gitmodules exists
if [ -f ".gitmodules" ]; then
  echo "Found .gitmodules file, backing it up..."
  cp .gitmodules .gitmodules.bak
fi

# Remove the existing submodule configuration
echo "Removing the existing submodule references..."
if [ -d ".git/modules/themes/coder" ]; then
  rm -rf .git/modules/themes/coder
fi

if [ -d "themes/coder" ]; then
  rm -rf themes/coder
fi

# Create themes directory if it doesn't exist
mkdir -p themes

# Clone the theme repository directly (without using submodules)
echo "Cloning the Hugo Coder theme repository directly..."
git clone https://github.com/luizdepra/hugo-coder.git themes/coder

# Check out a specific version of the theme compatible with Hugo 0.111.3
cd themes/coder
echo "Checking out a compatible version of the theme..."
git checkout v1.0
cd ../..

# ----- PART 2: RSSLINK FIX -----
echo "PART 2: Fixing RSSLink deprecation..."

# Fix baseof.html 
BASEOF_FILE="themes/coder/layouts/_default/baseof.html"

if [ -f "$BASEOF_FILE" ]; then
  echo "Found baseof.html, fixing RSS reference..."
  
  # Make a backup
  cp "$BASEOF_FILE" "${BASEOF_FILE}.bak"
  
  # Replace specific .RSSLink lines with compatible code
  # This is a more targeted approach that directly addresses the line causing issues
  if grep -q "\.RSSLink" "$BASEOF_FILE"; then
    echo "Found RSSLink in baseof.html, replacing it..."
    
    # Use sed with different patterns to catch various formats
    sed -i 's/{{ with .RSSLink }}/{{ with .OutputFormats.Get "RSS" }}/g' "$BASEOF_FILE"
    sed -i 's/{{ .RSSLink }}/{{ .Permalink }}/g' "$BASEOF_FILE"
    
    # For any that didn't match, try to find the actual line and replace it
    if grep -q "\.RSSLink" "$BASEOF_FILE"; then
      echo "More complex RSSLink pattern found, applying direct replacement..."
      
      # Create a temporary file with fixed content
      cat "$BASEOF_FILE" | while IFS= read -r line; do
        if [[ "$line" == *".RSSLink"* ]]; then
          # This matches the typical RSS link pattern in many Hugo themes
          if [[ "$line" == *"alternate"* && "$line" == *"href"* ]]; then
            echo '    {{ with .OutputFormats.Get "RSS" }}{{ printf "<link rel=\"%s\" type=\"%s\" href=\"%s\" title=\"%s\" />" .Rel .MediaType.Type .Permalink $.Site.Title | safeHTML }}{{ end }}' 
          else
            # Simple direct replacement
            echo "$line" | sed 's/\.RSSLink/\.OutputFormats\.Get "RSS" | absURL/g'
          fi
        else
          echo "$line"
        fi
      done > "${BASEOF_FILE}.new"
      
      # Replace the original with the fixed version
      mv "${BASEOF_FILE}.new" "$BASEOF_FILE"
    fi
  fi
  
  echo "Baseof.html updated"
fi

# Check all possible template files in theme
for TEMPLATE_FILE in $(find themes/coder/layouts/ -name "*.html"); do
  if grep -q "\.RSSLink" "$TEMPLATE_FILE"; then
    echo "Found RSSLink in $TEMPLATE_FILE, fixing..."
    cp "$TEMPLATE_FILE" "${TEMPLATE_FILE}.bak"
    
    # Apply the same replacements
    sed -i 's/{{ with .RSSLink }}/{{ with .OutputFormats.Get "RSS" }}/g' "$TEMPLATE_FILE"
    sed -i 's/{{ .RSSLink }}/{{ .Permalink }}/g' "$TEMPLATE_FILE"
    
    # If RSSLink still exists, use the more complex approach
    if grep -q "\.RSSLink" "$TEMPLATE_FILE"; then
      cat "$TEMPLATE_FILE" | while IFS= read -r line; do
        if [[ "$line" == *".RSSLink"* ]]; then
          if [[ "$line" == *"alternate"* && "$line" == *"href"* ]]; then
            echo '    {{ with .OutputFormats.Get "RSS" }}{{ printf "<link rel=\"%s\" type=\"%s\" href=\"%s\" title=\"%s\" />" .Rel .MediaType.Type .Permalink $.Site.Title | safeHTML }}{{ end }}' 
          else
            echo "$line" | sed 's/\.RSSLink/\.OutputFormats\.Get "RSS" | absURL/g'
          fi
        else
          echo "$line"
        fi
      done > "${TEMPLATE_FILE}.new"
      
      mv "${TEMPLATE_FILE}.new" "$TEMPLATE_FILE"
    fi
    
    echo "Updated $TEMPLATE_FILE"
  fi
done

# ----- PART 3: SHORTCODE FIX -----
echo "PART 3: Adding missing shortcodes..."

# Create directory for shortcodes if it doesn't exist
mkdir -p themes/coder/layouts/shortcodes

# Create tabgroup shortcode
echo "Creating tabgroup shortcode template..."
cat > themes/coder/layouts/shortcodes/tabgroup.html <<'EOL'
{{ $id := .Get 0 | default (printf "tabs-%d" (add 1 (len (seq 10000 | shuffle)))) }}
<div class="tab-group" id="{{ $id }}">
  <div class="tab-navigation">
    {{ range $index, $tab := .Scratch.Get "tabs" }}
      <button class="tab-button{{ if eq $index 0 }} active{{ end }}" 
              data-target="{{ $id }}-{{ $index }}">{{ $tab.name }}</button>
    {{ end }}
  </div>
  <div class="tab-content">
    {{ range $index, $tab := .Scratch.Get "tabs" }}
      <div class="tab-pane{{ if eq $index 0 }} active{{ end }}" 
           id="{{ $id }}-{{ $index }}">{{ $tab.content }}</div>
    {{ end }}
  </div>
</div>
<style>
  .tab-group {
    margin: 1rem 0;
  }
  .tab-navigation {
    display: flex;
    overflow-x: auto;
    border-bottom: 1px solid #ddd;
  }
  .tab-button {
    padding: 0.5rem 1rem;
    background: none;
    border: none;
    cursor: pointer;
  }
  .tab-button.active {
    border-bottom: 2px solid #4a4a4a;
    font-weight: bold;
  }
  .tab-content {
    padding: 1rem 0;
  }
  .tab-pane {
    display: none;
  }
  .tab-pane.active {
    display: block;
  }
</style>
<script>
  document.addEventListener('DOMContentLoaded', function() {
    const tabGroup = document.getElementById('{{ $id }}');
    if (!tabGroup) return;
    
    const buttons = tabGroup.querySelectorAll('.tab-button');
    const panes = tabGroup.querySelectorAll('.tab-pane');
    
    buttons.forEach(button => {
      button.addEventListener('click', function() {
        const target = this.dataset.target;
        
        // Deactivate all buttons and panes
        buttons.forEach(btn => btn.classList.remove('active'));
        panes.forEach(pane => pane.classList.remove('active'));
        
        // Activate the clicked button and corresponding pane
        this.classList.add('active');
        document.getElementById(target).classList.add('active');
      });
    });
  });
</script>
EOL

# Create tab shortcode
echo "Creating tab shortcode template..."
cat > themes/coder/layouts/shortcodes/tab.html <<'EOL'
{{ $name := .Get 0 }}
{{ with $.Parent }}
  {{ if not (.Scratch.Get "tabs") }}
    {{ .Scratch.Set "tabs" slice }}
  {{ end }}
  {{ .Scratch.Add "tabs" (dict "name" $name "content" $.Inner) }}
{{ end }}
EOL

# Additional CSS to ensure tabs work with the theme
echo "Adding tab styles to theme..."
mkdir -p themes/coder/static/css
cat > themes/coder/static/css/custom-tabs.css <<'EOL'
/* Custom tab styles */
.tab-group {
  margin: 2rem 0;
  font-family: var(--font-family);
}
.tab-navigation {
  display: flex;
  overflow-x: auto;
  border-bottom: 1px solid var(--border-color, #ddd);
}
.tab-button {
  padding: 0.5rem 1rem;
  background: none;
  border: none;
  cursor: pointer;
  color: var(--text-color, #212121);
  font-family: var(--font-family);
}
.tab-button.active {
  border-bottom: 2px solid var(--accent-color, #1565c0);
  font-weight: bold;
}
.tab-content {
  padding: 1rem 0;
}
.tab-pane {
  display: none;
}
.tab-pane.active {
  display: block;
}
EOL

# Add reference to the custom stylesheet in theme head
echo "Updating theme to include custom styles..."
if [ -f "themes/coder/layouts/partials/head.html" ]; then
  # Check if the CSS link already exists
  if ! grep -q "custom-tabs.css" themes/coder/layouts/partials/head.html; then
    # Add before </head> tag
    sed -i 's#</head>#<link rel="stylesheet" href="/css/custom-tabs.css" media="screen" />\n</head>#' themes/coder/layouts/partials/head.html
  fi
else
  # Try to find another head file to add the CSS reference
  for HEAD_FILE in $(find themes/coder/layouts/ -name "head*.html"); do
    if ! grep -q "custom-tabs.css" "$HEAD_FILE"; then
      echo "Adding CSS reference to $HEAD_FILE..."
      # Add at the end of the file
      echo '<link rel="stylesheet" href="/css/custom-tabs.css" media="screen" />' >> "$HEAD_FILE"
    fi
  done
fi

echo "All fixes completed successfully!"