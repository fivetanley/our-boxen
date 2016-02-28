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
  package { 'heroku-toolbelt': }
  package { 'terraform': }
  package { 'docker': }
  package { 'docker-machine': }
  package { 'docker-compose': }

  ::homebrew::tap { 'neovim/neovim': }
  ::homebrew::tap { 'caskroom/homebrew-versions': }
  ::homebrew::tap { 'homebrew/services': }

  package { 'neovim':
    require => ::Homebrew::Tap['neovim/neovim']
  }
}
