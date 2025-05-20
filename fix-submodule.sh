#!/bin/bash
# Submodule fix script for Netlify deployment

# Exit on error
set -e

echo "Starting submodule fix script..."

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

# Patch the theme-styles.html file to fix the IsServer issue
echo "Patching theme to fix IsServer compatibility issue..."
cat > themes/coder/layouts/partials/head/theme-styles.html <<'EOL'
{{- $options := (dict "targetPath" "css/coder.css" "outputStyle" "compressed" "enableSourceMap" true) -}}
{{- $styles := resources.Get "scss/coder.scss" | resources.ExecuteAsTemplate "style.coder.css" . | resources.ToCSS $options -}}

{{- if not (eq (getenv "HUGO_ENV") "production") -}}
  {{- $styles = $styles | resources.Concat "css/coder-dev.css" | fingerprint -}}
{{- else -}}
  {{- $styles = $styles | resources.Concat "css/coder.css" | fingerprint -}}
{{- end -}}

<link rel="stylesheet" href="{{ $styles.RelPermalink }}" {{ if not (eq (getenv "HUGO_ENV") "production") }}integrity="{{ $styles.Data.Integrity }}"{{ end }} crossorigin="anonymous" media="screen" />

{{- if .Site.Params.rtl -}}
  {{- $options := (dict "targetPath" "css/coder-rtl.css" "outputStyle" "compressed" "enableSourceMap" true) -}}
  {{- $styles := resources.Get "scss/coder-rtl.scss" | resources.ExecuteAsTemplate "style.coder-rtl.css" . | resources.ToCSS $options -}}
  
  {{- if not (eq (getenv "HUGO_ENV") "production") -}}
    {{- $styles = $styles | resources.Concat "css/coder-rtl-dev.css" | fingerprint -}}
  {{- else -}}
    {{- $styles = $styles | resources.Concat "css/coder-rtl.css" | fingerprint -}}
  {{- end -}}
  
  <link rel="stylesheet" href="{{ $styles.RelPermalink }}" {{ if not (eq (getenv "HUGO_ENV") "production") }}integrity="{{ $styles.Data.Integrity }}"{{ end }} crossorigin="anonymous" media="screen" />
{{- end -}}

{{- if .Site.Params.dark -}}
  {{- $options := (dict "targetPath" "css/coder-dark.css" "outputStyle" "compressed" "enableSourceMap" true) -}}
  {{- $styles := resources.Get "scss/coder-dark.scss" | resources.ExecuteAsTemplate "style.coder-dark.css" . | resources.ToCSS $options -}}
  
  {{- if not (eq (getenv "HUGO_ENV") "production") -}}
    {{- $styles = $styles | resources.Concat "css/coder-dark-dev.css" | fingerprint -}}
  {{- else -}}
    {{- $styles = $styles | resources.Concat "css/coder-dark.css" | fingerprint -}}
  {{- end -}}
  
  <link rel="stylesheet" href="{{ $styles.RelPermalink }}" {{ if not (eq (getenv "HUGO_ENV") "production") }}integrity="{{ $styles.Data.Integrity }}"{{ end }} crossorigin="anonymous" media="screen" />
{{- end -}}
EOL

# Check for config.toml or config.yaml and adjust theme settings
if [ -f "config.toml" ]; then
  echo "Updating theme name in config.toml..."
  # Replace 'hugo-coder' with 'coder' in theme configuration
  sed -i 's/theme\s*=\s*\(["'"'"']\)hugo-coder\1/theme = \1coder\1/g' config.toml
  sed -i 's/\[\s*module\s*\]\s*\[\s*imports\s*\]\s*\[\s*path\s*\]\s*.*hugo-coder.*/theme = "coder"/g' config.toml
fi

if [ -f "config.yaml" ] || [ -f "config.yml" ]; then
  CONFIG_FILE=$([ -f "config.yaml" ] && echo "config.yaml" || echo "config.yml")
  echo "Updating theme name in $CONFIG_FILE..."
  # Replace 'hugo-coder' with 'coder' in theme configuration
  sed -i 's/theme:\s*hugo-coder/theme: coder/g' $CONFIG_FILE
  sed -i '/module:/,/path: .*hugo-coder/c\theme: coder' $CONFIG_FILE
fi

# Check if Hugo modules are being used and update go.mod if needed
if [ -f "go.mod" ]; then
  echo "Found go.mod file, adjusting Hugo module configuration..."
  # Comment out any reference to hugo-coder module
  sed -i 's/\(.*hugo-coder.*\)/\/\/ \1 # Disabled by fix-submodule.sh/g' go.mod
fi

echo "Submodule fix completed successfully!"