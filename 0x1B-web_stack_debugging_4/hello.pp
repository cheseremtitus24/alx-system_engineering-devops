exec { 'modify_nginx_config':
  command     => '/bin/sed -i "s/6/4096/g" /etc/default/nginx',
  path        => ['/bin', '/usr/bin'],
  notify      => Service['nginx'],
  require => Package['nginx'],
  before  => Service['nginx'],
  refreshonly => true,
}

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure => running,
  enable => true,
}

