#!/bin/bash

echo "Patching Hugo theme header safely..."

HEADER_PATH="themes/coder/layouts/partials/header.html"

# Backup original
cp "$HEADER_PATH" "${HEADER_PATH}.bak"

# Overwrite with patched version
cat << 'EOF' > "$HEADER_PATH"
<nav>
  <ul>
    {{ range .Site.Menus.main }}
      <li>
        <a href="{{ if .Page }}{{ .Page.RelPermalink }}{{ else }}{{ .URL }}{{ end }}">{{ .Name }}</a>
      </li>
    {{ end }}
  </ul>
</nav>
EOF

echo "Header patched successfully!"
