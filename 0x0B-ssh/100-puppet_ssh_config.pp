# Set up cient SSH configuration files 
# Requirements
# private key ~/.ssh/school
# refuse to authenticate using a password

file {'config':
  ensure  => 'file',
  path    => '/etc/ssh/ssh_config',
  mode    => '0600',
  content => "IdentityFile ~/.ssh/school\nPasswordAuthentication no",  
}
