file_line { "disable_password_auth":
  path => "/home/cheserem/alx-system_engineering-devops/0x0B-ssh/ssh_config",
  line => "PasswordAuthentication no",
  match => "^PasswordAuthentication",
}

service { "ssh":
  ensure => "running",
  enable => true,
  require => File_line["disable_password_auth"],
}
