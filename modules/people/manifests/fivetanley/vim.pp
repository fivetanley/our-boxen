class people::fivetanley::vim {
  $home = "/Users/${::boxen_user}"

  file { "${home}/.config":
    ensure => directory,
    owner  => $::boxen_user,
  }

  # Install Janus
  repository { 'janus':
    source => 'carlhuda/janus',
    path   => "${home}/.vim",
  }
  ~> exec { 'Boostrap Janus':
    command     => 'rake',
    cwd         => "${home}/.vim",
    refreshonly => true,
    environment => [
      "HOME=${home}",
    ],
  }

  # Install Vim-Plug
  exec { 'download neovim':
    # lint:ignore:80chars
    command => "/usr/bin/curl -fLo ${home}/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim",
    # lint:endignore
    creates => "${home}/.config/nvim/autoload/plug.vim"
  }
}
