
include_recipe 'workstation::chef_dk'
include_recipe 'workstation::chef_solo'
include_recipe 'workstation::git'
include_recipe 'workstation::ntp'
include_recipe 'workstation::rdp'
include_recipe 'workstation::rubymine'
include_recipe 'workstation::rvm'
include_recipe 'workstation::ssh'
include_recipe 'workstation::update'
include_recipe 'workstation::user_admiral'
include_recipe 'workstation::user_chef'
include_recipe 'workstation::user_ensign'
include_recipe 'workstation::xfce'

cookbook_file '/home/chef/test.json' do
  source 'node.json'
  group 'chef'
  user 'chef'
  mode 00770
end