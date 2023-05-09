# Resolves Apache 500 Error Due to a File Not Found Error
exec { 'ResolveApache':
  command => '/bin/cp /var/www/html/wp-includes/class-wp-locale.php /var/www/html/wp-includes/class-wp-locale.phpp',
  path    => '/bin',
}
