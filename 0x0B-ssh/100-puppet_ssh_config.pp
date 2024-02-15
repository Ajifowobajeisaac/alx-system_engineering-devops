# Set up cient SSH configuration files 
# Requirements
# private key ~/.ssh/school
# refuse to authenticate using a password

file {"~/.ssh/config":
  ensure  => 'file',
  mode    => '0600',
  content => 'Host *\n IdentityFile ~/.ssh/school\n\t \
  PasswordAuthentication no'
}
