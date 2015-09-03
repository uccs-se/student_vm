# include_recipe 'workstation::user_chef'
# include_recipe 'workstation::git'
#
# git 'chef-repo' do
#   enable_checkout false
#   enable_submodules true
#
#   repository      node['git']['repo']
#   checkout_branch node['git']['branch']
#   revision        node['git']['revision']
#   depth           node['git']['depth']
#   destination     node['chef']['repo']
#
#   user  node['chef']['user']
#   group node['chef']['group']
#
#   retries     node['git']['retries']
#   retry_delay node['git']['delay']
#   action :sync
# end

#TODO call berks install and knife solo upload localhost
