# Installs flask from pip3
# Requirements
# Flask - 2.1.0

package { 'python3':
  ensure  => 'installed',
}

package { 'pip3':
  ensure   =>  '2.1.0',
  require  =>  'Package[python3]',
  name     =>  'flask',
  provider =>  'pip3',
}
