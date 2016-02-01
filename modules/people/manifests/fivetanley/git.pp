
class people::fivetanley::git {
  include ::git

  ::git::config::global { 'user.email':
    value => 'stanley@stan.li'
  }

  ::git::config::global { 'user.name':
    value => 'Stanley Stuart'
  }

  ::git::config::global { 'alias.serve':
    # lint:ignore:80chars
    value => 'daemon --verbose --export-all --base-path=.git --reuseaddr --strict-paths .git/'
    # lint:endignore
  }
}
