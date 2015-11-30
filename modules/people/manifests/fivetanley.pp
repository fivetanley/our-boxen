class people::fivetanley {
  include brewcask
  include people::fivetanley::git
  include people::fivetanley::app_store_apps
  include people::fivetanley::brew_cask_apps
  include people::fivetanley::janus
  Package { ensure => installed }

  package { 'zsh': }
  package { '1password': provider => 'brewcask' }
  package { 'dropbox': provider => 'brewcask' }
}
