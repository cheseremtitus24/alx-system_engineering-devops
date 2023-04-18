# stdlib is a non standard module that contains the file_line resource type
# Therefore, you must install using the following command:
# puppet module install puppetlabs-stdlib

include stdlib
file_line { "add hostname to /etc/hosts":
#path must be an absolute path
  path => "/home/cheserem/alx-system_engineering-devops/0x0B-ssh/puppetwork/hello",
#line is the line you want to be replaced
  line => "myhostname.example.com",
#regex to use to search/locate the line
  match => "^today",
#only replace when the line is present
  ensure => present,
}
