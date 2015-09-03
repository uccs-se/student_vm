include_recipe 'workstation::user_ensign'

override['rubymine']['user'] = 'ensign'

include_recipe 'rubymine'