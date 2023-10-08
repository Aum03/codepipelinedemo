#!/bin/bash

#_Change_Working_Directory
cd /home/ec2-user/server

#_Install_Development_Tools
yum groupinstall -y "Development Tools"

#_Install_Required_Packages
yum install -y gcc-c++ make

#_Download_Node.js_Source_Code
curl -o node-v14.18.0.tar.gz https://nodejs.org/dist/v14.18.0/node-v14.18.0.tar.gz

#_Extract_Node.js_Source_Code
tar -zxvf node-v14.18.0.tar.gz

#_Change_to_Node.js_Source_Code_Directory
cd node-v14.18.0

#_Configure_Node.js_Build
./configure

#_Compile_and_Install_Node.js
make
sudo make install

#_Clean_Up
cd ..
rm -rf node-v14.18.0.tar.gz node-v14.18.0

#_Install_NPM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bash_profile
nvm install 14.18.0
nvm use 14.18.0

#_Download_PM2
npm install pm2@latest -g
