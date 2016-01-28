class people::fivetanley::node {
  class { 'nodejs::global':
    version => '5.1.0'
  }

  Nodejs::Version {
    ensure => installed
  }

  nodejs::version { '4.2.3': }
  nodejs::version { '0.12.8': }
}
