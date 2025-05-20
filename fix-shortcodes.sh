#!/bin/bash
# Script to fix missing shortcode templates

# Exit on error
set -e

echo "Starting shortcode fix script..."

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
  echo "Warning: head.html not found. You may need to manually add the CSS link."
fi

echo "Shortcode fix script completed."