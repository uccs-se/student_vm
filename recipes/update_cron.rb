cron 'update' do
  minute  node['update']['minute']
  hour    node['update']['hour']
  day     node['update']['day']
  weekday node['update']['weekday']
  month   node['update']['month']
  user    node['chef']['user']
  shell   node['chef']['shell']
  command %W{
         /usr/bin/git clone -b dev #{node['git']['repo']} #{node['chef']['repo']} &&
         cd #{node['chef']['repo']} && /usr/bin/berks install &&
         knife solo upload localhost &&
         /usr/bin/chef-solo -E #{node.chef_environment} -U #{node['chef']['user']}
          }.join(' ')
end