class ecasound {
  package { 'ecasound': }

  include ecasound::plugins
  include ecasound::daemon
}

class ecasound::plugins {
  include apt::tryphon::dev
  
  package { 'csa':
    ensure => '0.5.100810-1',
    require => Apt::Source['tryphon-dev']
  }
  package { 'swh-plugins': }
}

class ecasound::daemon {
  file { '/boot/data':
    ensure => directory
  }

  file { '/etc/init.d/ecasound':
    source => 'puppet:///files/ecasound/ecasound.init',
    require => Package['ecasound']
  }
  exec { 'update-rc.d-ecasound':
    command => 'insserv ecasound',
    unless => 'ls /etc/rc?.d/S*ecasound > /dev/null 2>&1',
    require => File['/etc/init.d/ecasound']
  }

  file { '/etc/default/ecasound':
    ensure => '/var/etc/default/ecasound'
  }
  file { '/etc/ecasound':
    ensure => '/var/etc/ecasound'
  }
  file { '/etc/puppet/manifests/classes/ecasound.pp':
    source => 'puppet:///files/ecasound/manifest.pp'
  }

  # Config saved in /boot/data

  file { '/boot/data/ecasound.ecs':
    source => 'puppet:///files/ecasound/ecasound.ecs'
  }
  file { '/boot/data/ecasound.default':
    source => 'puppet:///files/ecasound/ecasound.default'
  }
}
