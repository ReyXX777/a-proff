#!/bin/bash

# Fix Hugo.Generator issue in baseof.html
echo "Fixing Hugo.Generator deprecation issue..."

# Find the baseof.html file
BASE_FILE="themes/coder/layouts/_default/baseof.html"

if [ -f "$BASE_FILE" ]; then
  echo "Found baseof.html at $BASE_FILE"
  
  # Create a backup
  cp "$BASE_FILE" "${BASE_FILE}.bak"
  
  # Replace .Hugo.Generator with the compatible hugo.Generator
  # Method 1: Direct replacement
  sed -i 's/\.Hugo\.Generator/hugo.Generator/g' "$BASE_FILE"
  
  # Method 2: If that doesn't work, try removing the line completely
  # This finds the line containing .Hugo.Generator and comments it out
  sed -i '/\.Hugo\.Generator/s/^/<!-- /; /\.Hugo\.Generator/s/$/ -->/' "$BASE_FILE"
  
  echo "Updated baseof.html to fix Hugo.Generator issue"
else
  echo "Error: Could not find baseof.html at $BASE_FILE"
  # Try to find it elsewhere
  FOUND_FILES=$(find themes -name "baseof.html" -type f)
  if [ -n "$FOUND_FILES" ]; then
    echo "Found other possible baseof.html files:"
    echo "$FOUND_FILES"
    
    # Try to fix all found files
    for file in $FOUND_FILES; do
      echo "Attempting to fix $file"
      cp "$file" "${file}.bak"
      sed -i 's/\.Hugo\.Generator/hugo.Generator/g' "$file"
      sed -i '/\.Hugo\.Generator/s/^/<!-- /; /\.Hugo\.Generator/s/$/ -->/' "$file"
    done
  else
    echo "No baseof.html files found in themes directory"
  fi
fi

echo "Fix completed. Please try building the site again."