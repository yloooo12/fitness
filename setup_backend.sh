#!/bin/bash

# Copy Backend Files to XAMPP Script

echo "=========================================="
echo "FITNESS TRACKING - Backend Setup"
echo "=========================================="
echo ""

# Check if XAMPP exists
if [ ! -d "/Applications/XAMPP/htdocs" ]; then
    echo "❌ ERROR: XAMPP not found!"
    echo "Please install XAMPP first: https://www.apachefriends.org/"
    exit 1
fi

echo "✅ XAMPP found!"
echo ""

# Create directory
echo "Creating directory..."
sudo mkdir -p /Applications/XAMPP/htdocs/fitness_tracking/backend

# Copy files
echo "Copying backend files..."
sudo cp -r backend/* /Applications/XAMPP/htdocs/fitness_tracking/backend/

# Set permissions
echo "Setting permissions..."
sudo chmod -R 755 /Applications/XAMPP/htdocs/fitness_tracking

echo ""
echo "=========================================="
echo "✅ Backend files copied successfully!"
echo "=========================================="
echo ""
echo "Next steps:"
echo "1. Open browser: http://localhost/fitness_tracking/backend/register.php"
echo "2. You should see: {\"success\":false,\"message\":\"Student number and password required\"}"
echo "3. If you see that, backend is working!"
echo ""
