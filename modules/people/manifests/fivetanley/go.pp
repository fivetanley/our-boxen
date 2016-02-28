class people::fivetanley::go {
  Package {
    provider => 'homebrew'
  }

  package { 'go': }

  $home = "/Users/${::boxen_user}"

  file { "${home}/code/go":
    ensure => directory
  }
}
