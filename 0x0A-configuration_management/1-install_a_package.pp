# Installs flask python package using pip3 installer
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

