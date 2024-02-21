# Pupeet manifest to intall and confugure nginx
# Requirements
# root page serves 'Hello World!'
# Redirection of /redirect_me

# 7-puppet_install_nginx_web_server.pp


package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

exec { 'allow nginx http through ufw':
  command => '/usr/sbin/ufw allow http',
  unless  => '/usr/sbin/ufw status | grep "Nginx HTTP"',
  require => Package['nginx'],
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => '<p>Hello World</p>',
  require => Package['nginx'],
}

file { '/var/www/html':
  ensure  => directory,
  owner   => 'www-data',
  group   => 'www-data',
  require => Package['nginx'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @(EOF),
  server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;

    server_name chefzeek.tech;

    location / {
        try_files \$uri \$uri/ =404;
    }

    location ~ ^/redirect_me/?$ {
        return 301 /index.html;
    }
  }
  | EOF
  ,
  require => Package['nginx'],
  notify  => Service['nginx'],
}
