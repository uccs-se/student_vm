include_recipe 'workstation::user_chef'
include_recipe 'workstation::chef_dk'
include_recipe 'workstation::chef_solo'
include_recipe 'workstation::git'

execute 'knife-solo' do
  command 'sudo chef gem clean knife-solo && sudo chef gem install knife-solo'
  user node['chef']['user']
end

cron 'update' do
  minute  node['update']['minute']
  hour    node['update']['hour']
  day     node['update']['day']
  weekday node['update']['weekday']
  month   node['update']['month']
  user    node['chef']['user']
  shell   node['chef']['shell']
  command %W{
         git clone -b dev #{node['git']['repo']} #{node['chef']['repo']} &&
         cd #{node['chef']['repo']} && /usr/bin/berks install &&
         echo -e 'y\n' | ssh-keygen -b 2048 -t rsa -N "" -f #{node['chef']['home']}/.ssh/tmp &&
         cat #{node['chef']['home']}/.ssh/tmp.pub > #{node['chef']['home']}/.ssh/authorized_keys &&
         knife solo cook chef@localhost  --identity-file #{node['chef']['home']}/.ssh/tmp --run-list "role[workstation]" &&
         rm #{node['chef']['home']}/.ssh/authorized_keys #{node['chef']['home']}/.ssh/tmp #{node['chef']['home']}/.ssh/tmp.pub &&
         rm -rf #{node['chef']['repo']}
          }.join(' ')
end