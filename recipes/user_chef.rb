group 'chef'

user 'chef' do
  supports :manage_home => true
  comment 'The user for chef to do all of it\'s work in.'
  group node['chef']['group']
  home node['chef']['home']
  shell node['chef']['shell']
  not_if { ::File.directory?("#{node['chef']['home']}") }
end

cookbook_file '/etc/sudoers.d/chef'  do
  source 'sudoers.d/chef'
  owner 'root'
  group 'root'
  mode 00440
end


