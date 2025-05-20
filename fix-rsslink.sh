#!/bin/bash
# Script to fix deprecated RSSLink in Hugo theme

# Exit on error
set -e

echo "Starting RSSLink fix script..."

# Find the file containing RSSLink
echo "Searching for templates using deprecated RSSLink..."
RSS_FILES=$(grep -r "\.RSSLink" themes/coder/layouts/ || true)

if [ -z "$RSS_FILES" ]; then
  echo "No files with RSSLink found. Let's check the baseof.html file specifically..."
  
  BASEOF_FILE="themes/coder/layouts/_default/baseof.html"
  if [ -f "$BASEOF_FILE" ]; then
    echo "Found baseof.html, attempting to fix RSS reference..."
    
    # Create backup of the file
    cp "$BASEOF_FILE" "${BASEOF_FILE}.bak"
    
    # Replace .RSSLink with proper .OutputFormats.Get "RSS" | absURL
    sed -i 's/{{ with .RSSLink }}/{{ with .OutputFormats.Get "RSS" }}/g' "$BASEOF_FILE"
    sed -i 's/{{ .RSSLink }}/{{ .Permalink }}/g' "$BASEOF_FILE"
    sed -i 's/{{ \.RSSLink }}/{{ .Permalink }}/g' "$BASEOF_FILE"
    
    echo "Updated $BASEOF_FILE"
  else
    echo "baseof.html not found in expected location."
  fi
  
  # Check all possible template files in theme
  for TEMPLATE_FILE in $(find themes/coder/layouts/ -name "*.html"); do
    echo "Checking $TEMPLATE_FILE for RSSLink..."
    if grep -q "\.RSSLink" "$TEMPLATE_FILE"; then
      echo "Found RSSLink in $TEMPLATE_FILE, fixing..."
      cp "$TEMPLATE_FILE" "${TEMPLATE_FILE}.bak"
      sed -i 's/{{ with .RSSLink }}/{{ with .OutputFormats.Get "RSS" }}/g' "$TEMPLATE_FILE"
      sed -i 's/{{ .RSSLink }}/{{ .Permalink }}/g' "$TEMPLATE_FILE"
      sed -i 's/{{ \.RSSLink }}/{{ .Permalink }}/g' "$TEMPLATE_FILE"
      echo "Updated $TEMPLATE_FILE"
    fi
  done
else
  echo "Found files with RSSLink, fixing them one by one..."
  
  # Extract filenames from grep results
  for RESULT in $RSS_FILES; do
    # Extract file path before the colon (grep format is "path:content")
    FILE=$(echo "$RESULT" | cut -d':' -f1)
    
    # Skip if the result doesn't point to an actual file
    if [ ! -f "$FILE" ]; then
      continue
    fi
    
    # Process each unique file only once
    if [ ! -f "${FILE}.processed" ]; then
      echo "Processing $FILE..."
      cp "$FILE" "${FILE}.bak"
      
      # Replace .RSSLink with proper .OutputFormats.Get "RSS" | absURL
      sed -i 's/{{ with .RSSLink }}/{{ with .OutputFormats.Get "RSS" }}/g' "$FILE"
      sed -i 's/{{ .RSSLink }}/{{ .Permalink }}/g' "$FILE"
      sed -i 's/{{ \.RSSLink }}/{{ .Permalink }}/g' "$FILE"
      
      # Mark as processed
      touch "${FILE}.processed"
      echo "Updated $FILE"
    fi
  done
  
  # Clean up processing markers
  find themes/coder/layouts/ -name "*.processed" -delete
fi

# Create meta.html template if needed to handle deprecation
mkdir -p themes/coder/layouts/partials/head
if [ ! -f "themes/coder/layouts/partials/head/meta.html" ]; then
  echo "Creating updated meta.html template..."
  cat > themes/coder/layouts/partials/head/meta.html <<'EOL'
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="{{ with .Description }}{{ . }}{{ else }}{{ with .Site.Params.description }}{{ . }}{{ end }}{{ end }}">
<meta name="keywords" content="{{ with .Keywords }}{{ delimit . ", " }}{{ else }}{{ with .Site.Params.keywords }}{{ delimit . ", " }}{{ end }}{{ end }}">
<meta name="author" content="{{ with .Site.Author.name }}{{ . }}{{ end }}">

{{ hugo.Generator }}

<!-- RSS -->
{{ range .AlternativeOutputFormats -}}
    {{ printf `<link rel="%s" type="%s" href="%s" title="%s" />` .Rel .MediaType.Type .Permalink $.Site.Title | safeHTML }}
{{ end -}}
EOL
fi

# Check all template files for other problematic code
echo "Checking for other deprecated Hugo features..."

# For Hugo 0.111.3, check for deprecated features like .Hugo
for TEMPLATE_FILE in $(find themes/coder/layouts/ -name "*.html"); do
  if grep -q "\.Hugo" "$TEMPLATE_FILE"; then
    echo "Found deprecated .Hugo in $TEMPLATE_FILE, fixing..."
    cp "$TEMPLATE_FILE" "${TEMPLATE_FILE}.bak"
    sed -i 's/{{ \.Hugo\./{{ hugo./g' "$TEMPLATE_FILE"
    sed -i 's/{{\.Hugo\./{{hugo./g' "$TEMPLATE_FILE"
    sed -i 's/{{ .Hugo\./{{ hugo./g' "$TEMPLATE_FILE"
    sed -i 's/{{.Hugo\./{{hugo./g' "$TEMPLATE_FILE"
    echo "Updated $TEMPLATE_FILE"
  fi
done

echo "RSSLink fix script completed."