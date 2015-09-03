include_recipe 'chef-dk'

chef_dk 'chef_dk' do
  version 'latest'
  prerelease false
  nightlies false
  global_shell_init true
end