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