#!/bin/bash

# Fix English homepage location and language switcher
# This script addresses Jekyll Polyglot generating the English homepage in the wrong location

echo "Fixing English homepage..."

# Copy English homepage from nested location to correct location
if [ -f "_site/en/en/index.html" ]; then
    cp _site/en/en/index.html _site/en/index.html
    echo "✓ Copied English homepage to correct location"
    
    # Fix language switcher to point to Finnish homepage
    # Check if the file exists and is readable
    if [ ! -r "_site/en/index.html" ]; then
        echo "Error: Cannot read _site/en/index.html"
        exit 1
    fi
    
    # Use a more robust approach that works on both systems
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        sed -i '' 's|href=" /en/"|href="/"|g' _site/en/index.html
    else
        # Linux (GitHub Actions) - use a more explicit approach
        # Create a temporary file to avoid in-place editing issues
        # Use double quotes to ensure proper escaping
        sed "s|href=\" /en/\"|href=\"/\"|g" _site/en/index.html > _site/en/index.html.tmp
        if [ $? -eq 0 ]; then
            mv _site/en/index.html.tmp _site/en/index.html
        else
            echo "Error: sed command failed"
            rm -f _site/en/index.html.tmp
            exit 1
        fi
    fi
    echo "✓ Fixed language switcher"
else
    echo "⚠ English homepage not found in expected location"
fi

echo "English homepage fix complete!"
