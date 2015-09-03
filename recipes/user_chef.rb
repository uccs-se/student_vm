group 'chef'

user 'chef' do
  comment 'The user for chef to do all of it\'s work in.'
  group node['chef']['group']
  home node['chef']['home']
  shell node['chef']['shell']
  #action [:create, :lock]
end

directory node['chef']['home'] do
  recursive true
  owner node['chef']['user']
  group node['chef']['group']
  mode 00750
end

file '/etc/sudoers.d/chef'  do
  owner 'root'
  group 'root'
  mode 00440
  content
"
# chef-solo privilege specification
#{node['chef']['user']} ALL=(ALL) NOPASSWD: /usr/bin/chef-solo
"
end


