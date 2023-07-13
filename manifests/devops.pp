#include wordpress::php_packages
#include wordpress::config

$home_user = '/home/vagrant'
$main_page = '/var/www/html'
$username = 'root'
$db_name = 'wordpress'
$db_user = 'wordpress'
$wp_admin = 'wp_admin'
$passwd = 'temp123'
$port = '8080'

Exec { path => ["/bin/", "/sbin", "/usr/bin/", "/usr/sbin"] }

# Instalación de paquetes
#package { 'httpd':
#    ensure => installed,
#}

#package { 'mariadb-server':
#    ensure => installed
#}

#package { 'mariadb':
#    ensure => installed
#}

# Gestión de servicios

#service { 'firewalld':
#    name => firewalld,
#    ensure => stopped,
#    enable => false
#}

#service { 'httpd':
#    ensure => 'running',
#    enable => 'true'
#}

#service { 'puppet':
#    ensure => 'running',
#    enable => 'true'
#}

#service { 'mariadb':
#    ensure => 'running',
#    enable => 'true'
#}

# Copy script to client
#file {'Change permissions':
#    path => '/tmp/mariadb_init.sh',
#    ensure => 'present',
#    mode => '0755'
#}

#Scripts
exec {'mysql_secure_installation':
    command => '/tmp/mariadb_init.sh'
}

#file { '/etc/mysql/my.cnf' :
#    ensure => present,
#    content => template('modules/mysql/my.cnf.erb'),
#    notify => Service['mysql'],
#}