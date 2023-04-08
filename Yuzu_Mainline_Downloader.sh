#!/bin/bash
# This script will download the lastest Yuzu Mainline AppImage in the 'image' sub directory
# and will create a Symlink to it for ease of switching between Main and EA

# Set GitHub release URL
export V_GH_URL="https://api.github.com/repos/yuzu-emu/yuzu-mainline/releases/latest"
# Set directory to save the AppImage to
export V_DIR=image
# Set file name of download
export V_DL_OUTPUT="Linux-Yuzu-Mainline.AppImage"
# Symlink Name
export V_SYM="Linux-Yuzu.AppImage"

# Create image directory if it doesn't exist
mkdir -p $V_DIR

# If a Yuzu Mainline AppImage already exists...
if [ -f $V_DIR/$V_DL_OUTPUT ]; then
    # Delete the existing AppImage
    echo "Deleting existing AppImage..."
    rm $V_DIR/$V_DL_OUTPUT
fi

# Get the download URL for the latest AppImage
V_DL_URL=$(curl --silent $V_GH_URL | grep -Po '"browser_download_url": "\K.*\.AppImage' | head -1)

# Download the AppImage
echo "Downloading the latest release..."
wget -O $V_DIR/$V_DL_OUTPUT $V_DL_URL
echo "Download complete!"

# Allow execution
chmod +x $V_DIR/$V_DL_OUTPUT

# If a Yuzu Symlink already exists...
if [ -f $V_SYM ]; then
    # Delete the existing AppImage
    echo "Deleting existing Symlink..."
    rm $V_SYM
fi

# Set Symlink
echo "Creating Symlink..."
ln -s $V_DIR/$V_DL_OUTPUT $V_SYM

exit
