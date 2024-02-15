# Installs flask from pip3
# Requirements
# Flask - 2.1.0

package { 'flask':
  ensure      =>  '2.1.0',
  versionable =>  '2.1.0',
  provider    =>  'pip3',
}
