# Increases the Limit of File Descriptors.
exec { 'mod_nginx_config':
  command => 'sed -i s/^ULIMIT.*/ULIMIT="\"-n 4096\""/g /etc/default/nginx',
  onlyif      => 'test -e /etc/default/nginx',
  path    => ['/bin', '/usr/bin'],
  notify  => Service['nginx'],
  require => Package['nginx'],
  before  => Service['nginx'],
}

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure => running,
  enable => true,
}
