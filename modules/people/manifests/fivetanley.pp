class people::fivetanley {
  include brewcask
  include people::fivetanley::git
  Package { ensure => installed }

  package { 'zsh': }
  package { '1password': provider => 'brewcask' }
  package { 'dropbox': provider => 'brewcask' }
}
