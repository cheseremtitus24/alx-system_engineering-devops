file_line { 'Turn_off_passwd_auth':
  #path => "/etc/ssh/ssh_config",
  path => "/home/cheserem/alx-system_engineering-devops/0x0B-ssh/ssh_config",
  line  => 'PasswordAuthentication no',
  match => '^PasswordAuthentication',
}
file_line { 'Declare identity file':
  #path => "/etc/ssh/ssh_config",
  path => "/home/cheserem/alx-system_engineering-devops/0x0B-ssh/ssh_config",
  line  => 'IdentityFile ~/.ssh/school',
  match => '^IdentityFile',
}
service { "ssh":
  ensure => "running",
  enable => true,
  require => File_line["Turn_off_passwd_auth"],
}
