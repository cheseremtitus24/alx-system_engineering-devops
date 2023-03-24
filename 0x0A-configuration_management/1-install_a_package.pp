# Installs flask python package
package { 'Flask':
  ensure   => 'latest',
  provider => 'pip3',
}

