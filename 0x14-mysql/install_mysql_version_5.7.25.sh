#!/usr/bin/env bash
# This script install mysql-community-server version 5.7.25 
echo "https://downloads.mysql.com/archives/community/"
sudo apt install -y libmecab2
sudo apt --fix-broken install -y
wget https://downloads.mysql.com/archives/get/p/23/file/mysql-client_5.7.25-1ubuntu18.10_amd64.deb
sudo dpkg -i mysql-client_5.7.25-1ubuntu18.10_amd64.deb 
wget https://downloads.mysql.com/archives/get/p/23/file/mysql-community-server_5.7.25-1ubuntu18.10_amd64.deb
export DEBIAN_FRONTEND=noninteractive
sudo -E dpkg -i mysql-community-server_5.7.25-1ubuntu18.10_amd64.deb 
