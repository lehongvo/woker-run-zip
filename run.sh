#!/bin/bash

# Script to run API Worker
# Automatically grants permissions and removes quarantine if needed

# Get absolute path of the script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
API_WORKER="$SCRIPT_DIR/api-worker-macos-m"
ZIP_FILE="$SCRIPT_DIR/api-worker-macos-m.zip"

# Check if file exists, if not try to extract from zip
if [ ! -f "$API_WORKER" ]; then
    echo "📦 api-worker-macos-m not found, checking for zip file..."
    
    if [ -f "$ZIP_FILE" ]; then
        echo "📂 Extracting $ZIP_FILE..."
        cd "$SCRIPT_DIR"
        unzip -q "$ZIP_FILE" || {
            echo "❌ Error: Failed to extract $ZIP_FILE"
            exit 1
        }
        echo "✅ Extraction complete!"
    else
        echo "❌ Error: api-worker-macos-m file not found"
        echo "📁 Path: $API_WORKER"
        echo "❌ Error: api-worker-macos-m.zip file not found"
        echo "📁 Path: $ZIP_FILE"
        exit 1
    fi
fi

echo "🚀 Starting API Worker..."
echo "📁 Path: $API_WORKER"

# Grant execute permission
echo "🔐 Granting execute permission..."
chmod +x "$API_WORKER"

# Remove quarantine on macOS (if present)
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "🍎 Removing quarantine attribute (macOS)..."
    xattr -d com.apple.quarantine "$API_WORKER" 2>/dev/null || true
fi

# Run API Worker
echo "✅ Running API Worker..."
echo ""
exec "$API_WORKER"
