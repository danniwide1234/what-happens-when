package { 'python3-pip':
  ensure => installed,
}

package { 'flask':
  ensure => '2.1.0',
  provider => 'pip3',
  require => Package['python3-pip'],
}

file { '/usr/bin/flask':
  ensure => link,
  target => '/usr/local/bin/flask',
  require => Package['flask'],
}

