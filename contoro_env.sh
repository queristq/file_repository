#!/bin/bash
echo "----------------------" 
echo "Installing VS Code" 
echo "----------------------" 
sudo apt-get install wget gpg 
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code
echo "----------------------" 
echo "Changing the desktop wallpaper image"
echo "----------------------" 
mkdir -p ~/Pictures/Wallpaper
cd ~/Pictures/Wallpaper
wget -c http://youngmok.com/wp-content/uploads/2023/05/95a9fa29-c117-4f79-bf72-42c9b71579b5.jpeg
mv 95a9fa29-c117-4f79-bf72-42c9b71579b5.jpeg contoro_bg.jpg
dir=$(pwd)
gsettings set org.gnome.desktop.background picture-uri file://$dir/contoro_bg.jpg
cd -
