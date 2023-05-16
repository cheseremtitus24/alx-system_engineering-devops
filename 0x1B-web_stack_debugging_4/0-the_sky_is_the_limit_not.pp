# This puppet file replaces 
# stdlib is a non standard module that contains the file_line resource type
# Therefore, you must install using the following command:
# puppet module install puppetlabs-stdlib

include stdlib

package { 'nginx':
  ensure => installed,
}

file_line { 'Increase FD from 15 to 4096':
#path must be an absolute path
  ensure => present,
#line is the line you want to be replaced
  line   => 'ULIMIT="-n 4096"',
#regex to use to search/locate the line
  match  => '^ULIMIT.*$',
#only replace when the line is present
  path   => '/etc/default/nginx',
  notify  => Service['nginx'], # nginx restarts whenever you edit this file.
  require => Package['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}

