include_recipe 'workstation::user_ensign'

node.override['rubymine']['user'] = 'ensign'
node.override['rubymine']['base_url'] = 'http://download-cf.jetbrains.com/ruby'
node.override['rubymine']['version'] = '7.1.4'
node.override['rubymine']['checksum'] = '9b5aa6099bca2dc6a1eefd1633ef6d0424a8767c95ca189bc18774a5222b8b43'

include_recipe 'rubymine::default'