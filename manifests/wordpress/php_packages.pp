class wordpress::php_packages {
    package { 'php-mysql':
        ensure => installed,
    }
    package { 'php-curl':
        ensure => installed,
    }
    package { 'php-gd':
        ensure => installed,
    }

    package { 'php-xml':
        ensure => installed,
    }
}