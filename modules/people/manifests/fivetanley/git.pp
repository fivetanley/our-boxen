
class people::fivetanley::git {
  include ::git
  
  ::git::config::global { 'user.email':
    value => 'stanley@stan.li'
  }

  ::git::config::global { 'user.name':
    value => 'Stanley Stuart'
  }
}
