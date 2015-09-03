include_recipe 'workstation::user_ensign'

node.override['rubymine']['user'] = 'ensign'

include_recipe 'rubymine'