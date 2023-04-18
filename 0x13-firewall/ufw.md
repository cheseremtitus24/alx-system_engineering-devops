# You can install ufw commandline utility as well as the gui utility
ufw does support adding rules before enabling the firewall,
sudo apt install ufw gufw -y
# enable ufw on startup
sudo ufw enable
# enable ssh
sudo ufw allow 22
#sudo ufw allow ssh
sudo ufw allow 80
#sudo ufw allow http
sudo ufw allow 443
#sudo ufw allow https

# enabling port ranges
sudo ufw allow 6000:6007/tcp
sudo ufw allow 6000:6007/udp


# [essential ufw rules](https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands)
# [ubuntu ufw community post](https://help.ubuntu.com/community/UFWhttps://help.ubuntu.com/community/UFW)
# [ufw startup server setup](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-20-04)
