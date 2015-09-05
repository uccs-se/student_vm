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

%W[
#{node['chef']['root']}
#{node['chef']['root']}/roles
#{node['chef']['root']}/sandbox
#{node['chef']['root']}/cookbooks
#{node['chef']['root']}/data_bags
#{node['chef']['root']}/environments
#{node['chef']['root']}/backup
#{node['chef']['root']}/cache
#{node['chef']['root']}/syntax_check
].each do |path|
  directory path do
    owner 'root'
    group 'root'
    mode  00775
  end
end

cookbook_file "#{node['chef']['root']}/node.json" do
  source 'node.json'
  owner 'root'
  group 'root'
  mode   00640
end
