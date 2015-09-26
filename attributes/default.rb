default['chef']['user']  = 'chef'
default['chef']['group'] = 'chef'
default['chef']['home']  = '/home/chef'
default['chef']['root']  = '/var/chef-solo'
default['chef']['shell'] = '/bin/bash'
default['chef']['repo']  = "#{node['chef']['home']}/repo"

# update every 2 hours.
default['update']['minute']  = '0'
default['update']['hour']    = '1,3,5,7,9,11,13,15,17,19,21,23'
default['update']['day']     = '*'
default['update']['weekday'] = '*'

# reboot every night.
default['reboot']['time']   = '5:30'

# git checkout information.
default['git']['branch']   = 'prod'
default['git']['repo']     = 'https://github.com/uccs-se/chef-repo'
default['git']['revision'] = 'HEAD'
default['git']['depth']    = 1
default['git']['retries']  = 3
default['git']['delay']    = 300

