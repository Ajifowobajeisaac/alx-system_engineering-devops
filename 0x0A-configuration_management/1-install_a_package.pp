# Installs flask from pip3
# Requirements
# Flask - 2.1.0

# Install Python 3
package { 'python3':
  ensure => installed,
}

exec { 'install_pip3':
  command =>  'apt-get install python3-pip',
  require =>  'Package[python3]'
}

package { 'flask':
  ensure   =>  '2.1.0',
  require  =>  'exec[install_pip3]',
  provider =>  'pip3',
}
