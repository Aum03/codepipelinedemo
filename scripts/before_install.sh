#!/bin/bash

#_Change_Working_Directory
cd /home/ec2-user/server

#_Update_&_Set_Node_Version

# For Debian/Ubuntu-based systems
   curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -


#_Download_Node_&NPM

yum -y install nodejs npm

#_Download_PM2
npm install pm2@latest -g
