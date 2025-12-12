#!/bin/bash

# Script: replace-wa-plus.sh
# Usage: bash replace-wa-plus.sh
# Replaces all occurrences of "WA Pluse CRM" with "WA Pluse CRM"
# Excludes node_modules directory

# Confirm script is run from project root
echo "Starting replacement in project: $(pwd)"

# Find all files excluding node_modules, dist, and build
find . \
  -type f \
  -not -path "./node_modules/*" \
  -not -path "./dist/*" \
  -not -path "./build/*" \
  -exec sed -i 's/WA Pluse CRM/WA Pluse CRM/g' {} +

echo "Replacement completed."
