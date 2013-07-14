file { "/var/etc/ecasound":
  ensure => "directory",
  tag => boot
}

file { "/var/etc/default/ecasound":
  source => "/boot/data/ecasound.default",
  replace => false,
  tag => boot
}

file { "/var/etc/ecasound/ecasound.ecs":
  source => "/boot/data/ecasound.ecs",
  replace => false,
  tag => boot
}
