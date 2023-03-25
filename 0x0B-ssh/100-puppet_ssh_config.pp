# stdlib is a non standard module that contains the file_line resource type
# Therefore, you must install using the following command:
# puppet module install puppetlabs-stdlib

include stdlib
file_line { 'Turn off passwd auth':
#path must be an absolute path
  ensure => present,
#line is the line you want to be replaced
  line   => '    PasswordAuthentication no',
#regex to use to search/locate the line
  match  => '^*PasswordAuthentication *',
#only replace when the line is present
  path   => '/home/cheserem/alx-system_engineering-devops/0x0B-ssh/sshconfig',
}
file_line { 'Declare identity file':
#path must be an absolute path
  ensure => present,
#line is the line you want to be replaced
  line   => '    IdentityFile ~/.ssh/school',
#regex to use to search/locate the line
  match  => '^*IdentityFile ~/.ssh/id_rsa*',
#only replace when the line is present
  path   => '/home/cheserem/alx-system_engineering-devops/0x0B-ssh/sshconfig',
}
