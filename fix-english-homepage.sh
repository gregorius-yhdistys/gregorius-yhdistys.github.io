#!/bin/bash

# Fix English homepage location and language switcher
# This script addresses Jekyll Polyglot generating the English homepage in the wrong location

echo "Fixing English homepage..."

# Copy English homepage from nested location to correct location
if [ -f "_site/en/en/index.html" ]; then
    cp _site/en/en/index.html _site/en/index.html
    echo "✓ Copied English homepage to correct location"
    
    # Fix language switcher to point to Finnish homepage
    sed -i '' 's|href=" /en/"|href="/"|g' _site/en/index.html
    echo "✓ Fixed language switcher"
else
    echo "⚠ English homepage not found in expected location"
fi

echo "English homepage fix complete!"
