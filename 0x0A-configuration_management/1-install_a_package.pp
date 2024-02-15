# Installs flask from pip3
# Requirements
# Flask - 2.1.0

# Install Python 3
package { 'python3':
  ensure => installed,
}

package { 'python3-pip':
  ensure  =>  installed,
  require =>  Package['python3'],
}


exec { 'install_werkzeug':
  command =>  'pip3 install Werkzeug==2.1.1',
  unless  =>  'pip3 freeze | grep Werkzeug==2.1.1',
  require =>   Package['python3-pip'],
}

package { 'flask':
  ensure   =>  '2.1.0',
  require  =>  Exec['install_werkzeug'],
  provider =>  'pip3',
}
