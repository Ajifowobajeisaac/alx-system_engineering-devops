# Installs flask from pip3
# Requirements
# Flask - 2.1.0

# Install Python 3
package { 'python3':
  ensure => 'installed',
}

package { 'python3-pip':
  ensure  =>  'installed',
  require =>  'Package[python3]',
}

package { 'flask':
  ensure   =>  '2.1.0',
  require  =>  'Package[python3-pip]',
  provider =>  'pip3',
}
