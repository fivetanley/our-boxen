class people::fivetanley::brew_cask_apps {
  $boxen_bin_dir = '/opt/boxen/bin'

  Package {
    provider => brewcask,
    ensure   => installed,
    require  => File[$boxen_bin_dir]
  }

  # package { 'vagrant': }
  # package { 'vmware-fusion': }
  package { 'spotify': }
  package { 'iterm2': }
  package { 'google-chrome': }
  package { 'firefox': }
  package { 'gitx':
    install_options => [
      "--binarydir=${boxen::config::bindir}"
    ]
  }
}
