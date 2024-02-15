# Installs flask from pip3
# Requirements
# Flask - 2.1.0

package { 'pip3':
  ensure   =>  '2.1.0',
  name     =>  'flask',
  provider =>  'pip3',
}
