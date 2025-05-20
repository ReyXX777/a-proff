#!/bin/bash

# Step 1: Ensure the Coder theme exists
THEME_DIR="themes/coder"
HEADER_FILE="$THEME_DIR/layouts/partials/header.html"

if [ ! -d "$THEME_DIR" ]; then
    echo "Coder theme not found! Cloning it..."
    git clone --depth 1 --branch v1.0 https://github.com/luizdepra/hugo-coder.git "$THEME_DIR"
fi

# Step 2: Fix RelPermalink error (if header.html exists)
if [ -f "$HEADER_FILE" ]; then
    echo "Fixing RelPermalink error in header.html..."
    cp "$HEADER_FILE" "$HEADER_FILE.bak"
    sed -i 's/\.RelPermalink/.URL | default .RelPermalink/g' "$HEADER_FILE"
    echo "✅ Applied fix (backup: $HEADER_FILE.bak)"
else
    echo "⚠️ header.html not found, but proceeding (path: $HEADER_FILE)"
fi

# Step 3: Run existing fixes (if needed)
bash fix-all.sh || true
bash fix-shortcodes.sh || true
bash patch-theme.sh || true
bash fix-rsslink.sh || true
bash fix-hugo-generator.sh || true
bash fix-url-deprecation.sh || true

# Step 4: Build Hugo
echo "Building Hugo site..."
hugo --gc --minify

if [ $? -eq 0 ]; then
    echo "✅ Build succeeded!"
else
    echo "❌ Build failed!"
    exit 1
fi