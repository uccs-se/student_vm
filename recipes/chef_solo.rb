#cookbook_file '/etc/chef/client.rb' do
#  source 'client.rb'
#  owner 'root'
#  group 'root'
#  mode '640'
#end

directory '/etc/chef' do
  action :create
  owner 'root'
  group 'root'
  mode  '755'
end

cookbook_file '/etc/chef/solo.rb' do
  source 'solo.rb'
  owner 'root'
  group 'root'
  mode '640'
end

cookbook_file '/var/chef-solo/node.json' do
  source "#{node.chef_environment}.json"
  owner 'root'
  group 'root'
  mode '640'
end
