class people::fivetanley {
  include ohmyzsh
  include people::fivetanley::git
  include people::fivetanley::brew
  include people::fivetanley::app_store_apps
  include people::fivetanley::brew_cask_apps
  include people::fivetanley::janus

  ruby::version { '2.1.5': }
  ruby::version { '2.3.0': }
  ruby::version { 'jruby-1.7.22': }

  $home = "/Users/${::boxen_user}"
  $home_files = 'puppet:///modules/people/fivetanley/home'

  file { "${home}/.zshrc":
    ensure  => file,
    source  => "${home_files}/.zshrc",
    require => Class['ohmyzsh']
  }
}

