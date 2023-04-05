# enables custo headers on nginx
include stdlib
$Custom_header = 'add_header X-Served-By $hostname;'

file_line { 'add_custom_header':
  path => '/etc/nginx/sites-enabled/default',
  line => $Custom_header,
}

service { 'nginx':
  ensure => running,
  enable => true,
  subscribe => File_line['add_custom_header'],
}
