# Set up cient SSH configuration files 
# Requirements
# private key ~/.ssh/school
# refuse to authenticate using a password

file {'config':
  ensure  => 'file',
  path    => '~/.ssh/config',
  mode    => '0600',
  content => 'IdentityFile ~/.ssh/school\nPasswordAuthentication no',
}
