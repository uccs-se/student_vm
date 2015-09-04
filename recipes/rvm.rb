include_recipe 'workstation::user_ensign'


node.override['chef_rvm'] = {
  users: {
    ensign: {
      rubies: {
        '2.2.3' => 'install',
      },
      gems: {
        '2.2.3@gems' => [
            {gem: 'rails', version: '4.2.4', action: 'install'},
            {gem: 'bundler', action: 'install'}
        ],
      },
      wrappers: {
      },
      aliases: {
        'default' => '2.2.3'
      }
    }
  }
}


include_recipe 'chef_rvm::default'
