package { 'nginx':
ensure => installed,
}

# Executes a kill on a background/active program
exec { 'killmenow':
command   => '/bin/sed -i "/^\s*server_name _*/a add_header X-Served-By \$hostname;" /etc/nginx/sites-enabled/default',
path      => '/bin',
subscribe => Package['nginx'],
}
file { '/etc/nginx/sites-enabled/default':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Package['nginx'],
    subscribe   => Exec['killmenow'],
  }

service { 'nginx':
ensure  => running,
enable  => true,
require => File['/etc/nginx/sites-enabled/default'],
}

exec { 'reload nginx':
command     => '/etc/init.d/nginx reload',
refreshonly => true,
subscribe   => File['/etc/nginx/sites-enabled/default'],
}

exec { 'restart nginx':
command     => '/etc/init.d/nginx restart',
refreshonly => true,
subscribe   => File['/etc/nginx/sites-enabled/default'],
}

