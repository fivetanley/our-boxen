class people::fivetanley::vim {
  file { "$::boxen_user/.config":
    ensure => directory,
    owner  => $::boxen_user,
  }
}
