#!/bin/zsh
echo "Starting install"
# Download assets for install
curl -L -O https://github.com/XQuartz/XQuartz/releases/download/XQuartz-2.8.5/XQuartz-2.8.5.pkg

curl -L -O https://github.com/macports/macports-base/releases/download/v2.9.3/MacPorts-2.9.3-14-Sonoma.pkg                                 

# Installing assets
sudo installer -pkg ~/XQuartz-2.8.5.pkg -target /
sudo installer -pkg ~/MacPorts-2.9.3-14-Sonoma.pkg -target /

# Setup Macports PackageManager
sudo port -v selfupdate 

# Installing PuTTY
sudo port install putty

# Set python version for exicution
sudo port select --set python python312
sudo port select --set python3 python312

# Make a copy of the binary exec to Desktop
cp /opt/local/bin/putty ~/Desktop/PuTTY

echo "PuTTY should now be installed! execute from desktop - Enjoy."
