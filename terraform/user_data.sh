#!/bin/bash
# Update the package manager
sudo apt-get update

# Install Docker
sudo apt-get install -y docker.io

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Create a directory for the application
mkdir /home/ubuntu/kiosk-app

# Add the Docker Compose file
cat <<EOL > /home/ubuntu/kiosk-app/docker-compose.yml
version: '3'
services:
  frontend:
    image: your_frontend_image
    ports:
      - "80:80"
  backend:
    image: your_backend_image
    ports:
      - "8080:8080"
EOL

# Change ownership of the directory
chown -R ubuntu:ubuntu /home/ubuntu/kiosk-app

# Start Docker Compose
cd /home/ubuntu/kiosk-app
sudo /usr/local/bin/docker-compose up -d
