git 'chef' do
  enable_checkout false
  enable_submodules true

  remote          node['git']['remote']
  checkout_branch node['git']['branch']
  revision        node['git']['revision']
  depth           node['git']['depth']
  destination     node['chef']['home']

  user  node['chef']['user']
  group node['chef']['group']

  retries     node['git']['retries']
  retry_delay node['git']['delay']
  action :sync
end