#!/bin/bash

# Fix for RelPermalink error in header.html
echo "Fixing RelPermalink error in header.html..."
HEADER_FILE="themes/coder/layouts/partials/header.html"

if [ -f "$HEADER_FILE" ]; then
    # Backup original file
    cp "$HEADER_FILE" "$HEADER_FILE.bak"

    # Replace problematic .RelPermalink usage with a safer check
    sed -i 's/\.RelPermalink/.URL | default .RelPermalink/g' "$HEADER_FILE"
    
    echo "✅ Fixed header.html (backup saved to header.html.bak)"
else
    echo "⚠️ header.html not found! Path: $HEADER_FILE"
    exit 1
fi

# Run all other fixes (optional, keep your existing fixes)
bash fix-all.sh
bash fix-shortcodes.sh
bash patch-theme.sh
bash fix-rsslink.sh
bash fix-hugo-generator.sh
bash fix-url-deprecation.sh

# Build Hugo
echo "Building Hugo site..."
hugo --gc --minify

if [ $? -eq 0 ]; then
    echo "✅ Site built successfully!"
else
    echo "❌ Hugo build failed!"
    exit 1
fi