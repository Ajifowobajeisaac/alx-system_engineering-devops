# Installs flask from pip3
# Requirements
# Flask - 2.1.0

exec { 'install_pip3':
  command =>  'apt-get install python3-pip',
}

package { 'flask':
  ensure   =>  '2.1.0',
  require  =>  'exec[install_pip3]',
  provider =>  'pip3',
}
