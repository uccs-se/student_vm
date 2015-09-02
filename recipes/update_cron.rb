cron 'update' do
  minute  node['update']['minute']
  hour    node['update']['hour']
  day     node['update']['day']
  weekday node['update']['weekday']
  month   node['update']['month']
  user    node['chef']['user']
  shell   node['chef']['shell']
  command %W{
         /usr/bin/git -C #{node['chef']['home']} fetch --all &&
         /usr/bin/git -C #{node['chef']['home']} reset --hard origin/#{node.chef_environment} &&
         cd #{node['chef']['home']} && /usr/bin/berks install &&
         /usr/bin/chef-solo -E #{node.chef_environment} -U #{node['chef']['user']}
          }.join(' ')
end