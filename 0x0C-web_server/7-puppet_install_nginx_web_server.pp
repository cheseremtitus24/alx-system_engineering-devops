# nginx_server module
# Install and configure Nginx with a 301 redirect for /redirect_me URL

# Class: nginx_server
#
# This class installs and configures an Nginx server to listen on port 80 and serve
# the string "Hello World!" when querying Nginx at its root / with a GET request.
# Additionally, it performs a 301 redirect when querying /redirect_me.
#
# Examples:
#
#     include nginx_server
#
class nginx_server {
  # Install Nginx package
  package { 'nginx':
    ensure => installed,
  }

  # Configure Nginx server
  file { '/var/www/html/404.html':
    ensure  => file,
    content => 'Ceci n\'est pas une page \n',
    notify  => Service['nginx'],
  },
  file { '/var/www/html/index.html':
    ensure  => file,
    content => 'Hello World!                 ',
    notify  => Service['nginx'],
  },
  file { '/etc/nginx/sites-enabled/default':
    ensure  => file,
    content => '
      server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;

        index index.html index.htm index.nginx-debian.html;

        server_name _;

        location / {
          try_files $uri $uri/ =404;
        }

        location = /redirect_me {
          return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
        }
      }
    ',
    notify  => Service['nginx'],
  }

  # Start and enable Nginx service
  service { 'nginx':
    ensure  => running,
    enable  => true,
    require => Package['nginx'],
  }
}

# Class documentation
# This class installs and configures an Nginx server with a 301 redirect for the /redirect_me URL.
# It listens on port 80 and returns the "Hello World!" message for the root URL (/).
# Usage: include nginx_server in your Puppet manifest
# Dependencies: none
#
# Example:
#   include nginx_server

# Autoloader layout
autoload (nginx_server, 'test2')

class { 'nginx_server': }
include nginx_server
