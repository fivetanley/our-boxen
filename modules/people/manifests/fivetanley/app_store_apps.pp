class people::fivetanley::app_store_apps {
  ::appstore::app { 'Tweetbot':
    source => 'tweetbot-for-twitter/id557168941'
  }

  ::appstore::app { 'Dash':
    source => 'dash-3-api-docs-snippets./id449589707'
  }

  ::appstore::app { 'Paw':
    source => 'paw-http-rest-client/id584653203'
  }

  ::appstore::app { 'Slack':
    source => 'slack/id803453959'
  }

  ::appstore::app { 'Airmail 2':
    source => 'airmail-2.5/id918858936'
  }

  ::appstore::app { 'Pixelmator':
    source => 'pixelmator/id407963104'
  }

  ::appstore::app { 'BetterSnapTool':
    source => 'bettersnaptool/id417375580'
  }

  ::appstore::app { 'The Unarchiver':
    source => 'the-unarchiver/id425424353'
  }

  ::appstore::app { 'Annotate':
    source => 'annotate-capture-screenshot/id918207447'
  }
}
