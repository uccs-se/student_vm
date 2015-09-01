cron 'update' do
  action :create
  minute node['update']['minute']
  hour node['update']['hour']
  day node['update']['day']
  weekday node['update']['weekday']
  month node['update']['month']
  user node['chef']['user']
  shell node['chef']['shell']
  command %W{
         /usr/bin/git -C #{node['chef']['home']} fetch --all &&
         /usr/bin/git -C #{node['chef']['home']} reset --hard origin/#{node.chef_environment} &&
         /usr/bin/berks install &&
         /usr/bin/chef-solo -E #{node.chef_environment}
  }.join(' ')
end

# user node['chef']['user'] do
#   comment 'Chef User'
#   home node['chef']['home']
#   shell node['chef']['shell']
#   action [:create, :lock]
# end
#
# directory node['chef']['root'] do
#   recursive true
#   owner node['chef']['user']
#   group node['chef']['group']
#   mode '0770'
#   action :create
# end
#
# git 'chef' do
#   enable_checkout false
#   enable_submodules true
#
#   remote node['git']['remote']
#   checkout_branch node['git']['branch']
#   revision node['git']['revision']
#   depth node['git']['depth']
#   destination node['chef']['root']
#
#   user node['chef']['user']
#   group node['chef']['group']
#
#   retries node['git']['retries']
#   retry_delay node['git']['delay']
#   action :sync
# end