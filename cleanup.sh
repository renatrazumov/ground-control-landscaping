#!/bin/bash

# Stop any running Node.js processes
pkill -f node

# Remove old build files
rm -rf dist
rm -rf node_modules

# Clean npm cache
npm cache clean --force

# Remove any error logs
rm -f npm-debug.log*
rm -f yarn-debug.log*
rm -f yarn-error.log*

echo "Cleanup completed successfully!"