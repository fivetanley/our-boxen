class people::fivetanley {
  include ohmyzsh
  include people::fivetanley::git
  include people::fivetanley::brew
  include people::fivetanley::app_store_apps
  include people::fivetanley::brew_cask_apps
  include people::fivetanley::janus
  include people::fivetanley::ruby
  include people::fivetanley::node
  include people::fivetanley::go

  $home = "/Users/${::boxen_user}"
  $home_files = 'puppet:///modules/people/fivetanley/home'

  file { "${home}/.zshrc":
    ensure  => file,
    source  => "${home_files}/.zshrc",
    require => Class['ohmyzsh']
  }

  file { "${home}/code":
    ensure => directory
  }
}

