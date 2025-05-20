#!/bin/bash

# Fix .URL deprecation issue in list.html
echo "Fixing .URL deprecation issue..."

# Find the list.html file in partials
LIST_FILE="themes/coder/layouts/partials/list.html"

if [ -f "$LIST_FILE" ]; then
  echo "Found list.html at $LIST_FILE"
  
  # Create a backup
  cp "$LIST_FILE" "${LIST_FILE}.bak"
  
  # Replace .URL with .RelPermalink (the recommended replacement)
  sed -i 's/\.URL/\.RelPermalink/g' "$LIST_FILE"
  
  echo "Updated list.html to fix .URL deprecation issue"
else
  echo "Error: Could not find list.html at $LIST_FILE"
  # Try to find it elsewhere
  FOUND_FILES=$(find themes -name "list.html" -type f)
  if [ -n "$FOUND_FILES" ]; then
    echo "Found list.html files:"
    echo "$FOUND_FILES"
    
    # Try to fix all found files
    for file in $FOUND_FILES; do
      echo "Attempting to fix $file"
      cp "$file" "${file}.bak"
      sed -i 's/\.URL/\.RelPermalink/g' "$file"
    done
  else
    echo "No list.html files found in themes directory"
  fi
fi

# Additionally, search for .URL in all template files and replace it
echo "Searching for other instances of .URL in template files..."
TEMPLATE_FILES=$(find themes -name "*.html" -type f)

for file in $TEMPLATE_FILES; do
  if grep -q "\.URL" "$file"; then
    echo "Found .URL in $file, replacing with .RelPermalink..."
    cp "$file" "${file}.bak"
    sed -i 's/\.URL/\.RelPermalink/g' "$file"
  fi
done

echo "Fix for .URL deprecation completed. Please try building the site again."