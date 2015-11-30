class people::fivetanley::janus {
  $home = "/Users/${::boxen_user}"
  $config_dir = "${home}/.config"
  exec { 'install janus':
    command => '/usr/bin/curl -Lo- https://bit.ly/janus-bootstrap | /bin/bash',
    creates => "${home}/.vim/Rakefile",
    timeout => 600
  }

  # Neovim Config dir
  file { $config_dir:
    ensure  => directory,
    owner   => $::boxen_user,
    require => Exec['install janus']
  }

  file { "${config_dir}/nvim":
    ensure => link,
    target => "${home}/.vim",
    require => Exec['install janus']
  }

  file { "${config_dir}/nvim/init.vim":
    ensure => 'link',
    target => "${home}/.vimrc",
    require => Exec['install janus']
  }
}

