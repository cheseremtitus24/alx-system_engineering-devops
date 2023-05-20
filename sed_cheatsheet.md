# preserves indentation and writes content below the searched line
echo -e "
          Options +ExecCGI 
	  AddHandler cgi-script .cgi .pl .py
" > tmp

# below the line Directory /var/www/ - add contents of tmp above below
# this line
sed -i '/^.Directory \/var\/www*/r tmp' /etc/apache2/apache2.conf
rm -rf tmp

# port subsitution for nginx
sed -i 's/80/8080/g' /etc/nginx/sites-enabled/default

# add data below the line with server_name _ - to add before this line you'd use /i insted of /a
data="location /redirect_me {return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;} "
sed -i "/^\s*server_name _*/a $data" /etc/nginx/sites-enabled/default

# insert data before the server_name _ line
snippet_data="include snippets/error-page.conf;"
sed -i "/^\s*server_name _*/i $snippet_data" /etc/nginx/sites-enabled/default

# Comments out a line that contains a regex string
# foward = 1
forward = 1
sudo sed -i '/^#.*forward.*=1$/s/^#//' /etc/ufw/sysctl.conf

# delete a line that matches a particular pattern
sed -i '/pattern to match/d' infile
