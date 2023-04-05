# enables custom headers on nginx
include stdlib
$header = 'add_header X-Served-By $hostname;'

file_line { 'add_custom_header':
  #path => '/etc/nginx/sites-enabled/default',
  path => '/home/cheserem/Desktop/alx-system_engineering-devops/0x0F-load_balancer/default',
  line => $header,
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File_line['add_custom_header'],
}
