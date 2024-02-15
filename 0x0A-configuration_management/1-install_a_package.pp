# Installs flask from pip3
# Requirements
# Flask - 2.1.0

package { 'flask':
  provider    =>  'pip3',
  versionable =>  '2.1.0',
  ensure      =>  '2.1.0'
}
