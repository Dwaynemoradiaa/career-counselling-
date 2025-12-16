#!/bin/bash

echo "🔧 Fixing dependency issues..."

# Fix frontend dependencies
echo "📦 Updating frontend dependencies..."
cd frontend
rm -f package-lock.json
npm install
cd ..

# Fix backend dependencies
echo "📦 Updating backend dependencies..."
cd backend
rm -f package-lock.json
npm install
cd ..

echo "✅ Dependencies fixed! You can now run:"
echo "   docker-compose up --build" 