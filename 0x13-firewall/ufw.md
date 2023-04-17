# You can install ufw commandline utility as well as the gui utility
sudo apt install ufw gufw -y
# enable ufw on startup
sudo ufw enable
# enable ssh
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443
