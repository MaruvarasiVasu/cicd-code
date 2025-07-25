#!/bin/bash
echo "Deploying application"

# Go to a temp directory (or your preferred folder)
cd /tmp

# Remove any previous clone if exists
rm -rf repo

# Clone your GitHub repo (replace URL with your repo's URL)
git clone https://github.com/your-username/your-repo.git repo

# Copy all files from repo to /var/www/html, force overwrite
sudo cp -rf /tmp/repo/* /var/www/html/

# Restart Apache to apply changes
sudo systemctl restart httpd

echo "Deployment finished successfully."

