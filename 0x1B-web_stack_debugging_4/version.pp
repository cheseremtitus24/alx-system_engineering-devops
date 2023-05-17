exec { 'install_puppetlabs_stdlib':
  command     => '/usr/bin/puppet module install puppetlabs-stdlib',
  unless      => '/usr/bin/puppet module list | grep puppetlabs-stdlib',
  path        => ['/bin', '/opt/puppet/bin', '/usr/bin'],
  notify      => Class['import_stdlib'],
  refreshonly => true,
}

class import_stdlib {
  include stdlib

  file_line { 'modify_nginx_config':
    ensure  => present,
    line    => 'ULIMIT="-n 4096"',
    match   => '^ULIMIT.*$',
    path    => '/etc/default/nginx',
    notify  => Service['nginx'],
    require => Package['nginx'],
    before  => Service['nginx'],
  }
}

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure => running,
  enable => true,
}

class { 'import_stdlib': }
