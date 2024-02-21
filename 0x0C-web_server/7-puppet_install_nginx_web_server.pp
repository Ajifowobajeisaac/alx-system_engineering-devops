# Ensure Nginx is installed
package { 'nginx':
  ensure => installed,
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure => running,
  enable => true,
  require => Package['nginx'],
}

# Allow HTTP through the firewall
exec { 'allow nginx http through ufw':
  command => '/usr/sbin/ufw allow http',
  unless  => '/usr/sbin/ufw status | grep "Nginx HTTP"',
  require => Package['nginx'],
}

# Ensure the document root directory exists
file { '/var/www/chefzeek.tech/html':
  ensure => directory,
  owner  => 'www-data',
  group  => 'www-data',
  require => Package['nginx'],
}

# Create a simple HTML file
file { '/var/www/chefzeek.tech/html/index.html':
  ensure  => file,
  content => '<p>Hello World</p>',
  require => File['/var/www/chefzeek.tech/html'],
}

# Configure Nginx server block
file { '/etc/nginx/sites-available/chefzeek_server':
  ensure  => file,
  content => template('path/to/your/template.erb'),
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Enable the Nginx server block
file { '/etc/nginx/sites-enabled/chefzeek_server':
  ensure => link,
  target => '/etc/nginx/sites-available/chefzeek_server',
  require => File['/etc/nginx/sites-available/chefzeek_server'],
  notify  => Service['nginx'],
}

# Remove the default Nginx server block
file { '/etc/nginx/sites-enabled/default':
  ensure => absent,
  notify => Service['nginx'],
}
