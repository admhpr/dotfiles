#!/bin/bash
cd /tmp || exit
echo "Downloading Postman ..."
wget -q https://dl.pstmn.io/download/latest/linux?arch=64 -O postman.tar.gz
tar -xzf postman.tar.gz
rm postman.tar.gz

echo "Installing to opt..."
if [ -d "~/Postman" ];then
    rm -rf ~/Postman
fi
mv Postman /opt/postman

echo "Creating symbolic link..."
if [ -L "/usr/bin/postman" ];then
    sudo rm -f /usr/bin/postman
fi
sudo ln -s /opt/postman/Postman /usr/bin/postman

echo "Installation completed successfully."
echo "You can use Postman!"
