file { "/home/cheserem/alx-system_engineering-devops/0x0B-ssh/tssh":
  ensure => "directory",
  mode => "0700",
}

file { "/home/cheserem/alx-system_engineering-devops/0x0B-ssh/tssh/config":
  ensure => "present",
  mode => "0600",
  content => "PasswordAuthentication no\n",
}
