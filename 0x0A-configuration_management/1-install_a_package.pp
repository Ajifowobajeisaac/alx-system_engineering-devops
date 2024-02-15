# Installs flask from pip3
# Requirements
# Flask - 2.1.0

package { 'flask':
  ensure   =>  installed,
  name     =>  'fask'
  provider =>  'pip3',
}
