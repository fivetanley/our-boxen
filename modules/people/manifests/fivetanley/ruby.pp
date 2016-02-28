class people::fivetanley::ruby {

  # ruby versions
  ruby::version { '2.1.5': }
  ruby::version { '2.3.0': }
  ruby::version { 'jruby-1.7.22': }

  # gems
  ruby_gem { 'travis for all rubies':
    gem          => 'travis',
    version      => '1.8.2',
    # installed for all rubies
    ruby_version => '*',
  }

}
