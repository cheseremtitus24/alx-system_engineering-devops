#!/usr/bin/env bash
sudo apt install -y apache2 php-cgi
# Enable support for Execute permission on scripts
echo -e "
          Options +ExecCGI 
	  AddHandler cgi-script .cgi .pl .py
" > tmp

# below the line Directory /var/www/ - add contents of tmp above below
# this line
sed -i '/^.Directory \/var\/www*/r tmp' /etc/apache2/apache2.conf

# enable cgi on apache2 web server
sudo a2enmod cgi 
# Restarting the web Server
sudo systemctl restart apache2
sudo rm -rf tmp

