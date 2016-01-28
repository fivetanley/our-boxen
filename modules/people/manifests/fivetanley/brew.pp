class people::fivetanley::brew {
  include ::homebrew

  Package { ensure => installed }

  package { 'zsh': }
  package { 'the_silver_searcher': }
  package { 'jq': }
  package { 'packer': }
  package { 'redis': }
  package { 'memcached': }
  package { 'postgresql': }
  package { 'elasticsearch17': }
  package { 'imagemagick': }
  package { 'direnv': }

  ::homebrew::tap { 'neovim/neovim': }
  ::homebrew::tap { 'caskroom/versions': }
  ::homebrew::tap { 'homebrew/services': }

  package { 'neovim':
    require => ::Homebrew::Tap['neovim/neovim']
  }
}
