class people::fivetanley::brew_cask_apps {
  include brewcask
  $boxen_bin_dir = '/opt/boxen/bin'

  Package {
    provider => brewcask,
    ensure   => installed,
    require  => [
      File[$boxen_bin_dir],
      ::Homebrew::Tap['caskroom/versions']
    ]
  }

  package { 'vagrant': }
  package { 'alfred': }
  # package { 'vmware_fusion': }
  package { 'spotify': }
  package { 'iterm2': }
  package { 'google-chrome': }
  package { 'firefox': }
  package { 'gitx':
    install_options => [
      "--binarydir=${boxen::config::bindir}"
    ]
  }
  package { '1password': }
  package { 'dropbox': }
  package { 'knock': }
  package { 'visual-studio-code': }
  package { 'firefoxdeveloperedition': }
  package { 'gas-mask': }
  package { 'adium': }
}

