include_recipe 'chef-solo::default'

directory '/etc/chef' do
  owner 'root'
  group 'root'
  mode   00755
end

cookbook_file '/etc/chef/solo.rb' do
  source 'solo.rb'
  owner  'root'
  group  'root'
  mode   00640
end

%w[
/var/chef-solo
/var/chef-solo/roles
/var/chef-solo/sandbox
/var/chef-solo/cookbooks
/var/chef-solo/data_bags
/var/chef-solo/environments
/var/chef-solo/backup
/var/chef-solo/cache
/var/chef-solo/syntax_check
].each do |path|
  directory path do
    owner 'root'
    group 'root'
    mode  00775
  end
end

file '/var/chef-solo/node.json' do
  owner 'root'
  group 'root'
  mode   00640
  content
"{
  \"name\": \"student\",
  \"chef_environment\": \"#{node.chef_environment}\",
  \"normal\": {
    \"tags\": [
    ]
  },
  \"run_list\": [
    \"recipe[workstation]\"
  ]
}"
end
