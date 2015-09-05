include_recipe 'workstation::user_chef'
include_recipe 'workstation::chef_dk'
include_recipe 'workstation::chef_solo'

execute 'knife-solo' do
  command 'sudo /usr/bin/chef gem install knife-solo'
end
