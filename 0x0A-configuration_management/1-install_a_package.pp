# Installs flask python package using pip3 installer
package { 'Flask':
  ensure   => 'latest',
  provider => 'pip3',
}

