package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask',
  path    => ['/usr/bin', '/usr/local/bin'],
  require => Package['python3-pip'],
}
