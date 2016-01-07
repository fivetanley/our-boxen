class people::fivetanley::node {
  class { 'nodejs::global':
    version => '5.1.0'
  }

  nodejs::version { '4.2.3':
    ensure => installed
  }
}
