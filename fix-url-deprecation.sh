#!/bin/bash

echo "Fixing .URL deprecation issue in Hugo templates..."

# Regex to match standalone `.URL` only (not .Site.URL, .Params.URL, etc.)
REGEX='(^|[^[:alnum:]_])\.URL([^[:alnum:]_]|$)'
REPLACEMENT='\1.RelPermalink\2'

# Function to safely replace only standalone .URL with .RelPermalink
replace_url_deprecation() {
  local file="$1"
  if grep -P "$REGEX" "$file" > /dev/null; then
    echo "Fixing $file"
    cp "$file" "${file}.bak"
    # Using Perl for regex group replacement
    perl -pe "s/$REGEX/$REPLACEMENT/g" "${file}.bak" > "$file"
  fi
}

# Target specific file first
LIST_FILE="themes/coder/layouts/partials/list.html"
if [ -f "$LIST_FILE" ]; then
  echo "Found list.html at $LIST_FILE"
  replace_url_deprecation "$LIST_FILE"
else
  echo "list.html not found at default path, searching recursively..."
  FOUND_FILES=$(find themes -name "list.html" -type f)
  if [ -n "$FOUND_FILES" ]; then
    echo "Found list.html files:"
    echo "$FOUND_FILES"
    for file in $FOUND_FILES; do
      replace_url_deprecation "$file"
    done
  else
    echo "No list.html files found in themes/"
  fi
fi

# Fix .URL in all template files
echo "Scanning all .html files for deprecated .URL usage..."
TEMPLATE_FILES=$(find themes -name "*.html" -type f)
for file in $TEMPLATE_FILES; do
  replace_url_deprecation "$file"
done

echo "Deprecation fix complete. Please re-run Hugo to verify."
