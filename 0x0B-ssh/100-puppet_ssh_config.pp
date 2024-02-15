# Set up cient SSH configuration files 
# Requirements
# private key ~/.ssh/school
# refuse to authenticate using a password

file {"~/.ssh/config":
  ensure  => 'file',
  mode    => '0600',
  content => 'IdentityFile ~/.ssh/school\nPasswordAuthentication no'
}
