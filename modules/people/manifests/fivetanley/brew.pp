class people::fivetanley::brew {
  include ::homebrew

  Package { ensure => installed }

  package { 'zsh': }

  ::homebrew::tap { 'neovim/neovim': }
  package { 'neovim':
    require => ::Homebrew::Tap['neovim/neovim']
  }
}
