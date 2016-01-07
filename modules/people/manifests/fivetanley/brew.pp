class people::fivetanley::brew {
  include ::homebrew

  Package { ensure => installed }

  package { 'zsh': }
  package { 'the_silver_searcher': }

  ::homebrew::tap { 'neovim/neovim': }
  ::homebrew::tap { 'caskroom/versions': }

  package { 'neovim':
    require => ::Homebrew::Tap['neovim/neovim']
  }
}
