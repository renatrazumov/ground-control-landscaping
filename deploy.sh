#!/bin/bash

# Exit on any error
set -e

# Load environment variables
source ~/.bashrc

# Navigate to application directory
cd "$(dirname "$0")"

# Run cleanup first
./cleanup.sh

# Install dependencies
echo "Installing dependencies..."
npm install

# Build the application
echo "Building application..."
npm run build

# Ensure dist directory exists
if [ ! -d "dist" ]; then
  echo "Error: Build failed - dist directory not created"
  exit 1
fi

# Start the server
echo "Starting server..."
npm start