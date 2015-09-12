# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

default['chef']['user']  = 'chef'  #TODO use a user and group dedicated to chef instead of root.
default['chef']['group'] = 'chef'
default['chef']['home']  = '/home/chef'
default['chef']['root']  = '/var/chef-solo'
default['chef']['shell'] = '/bin/bash'
default['chef']['repo']  = "#{node['chef']['home']}/repo"

# update every ten minutes for testing purposes will be removed for distribution.
default['update']['minute']  = '0'
default['update']['hour']    = '1,3,5,7,9,11,13,15,17,19,21,23'
default['update']['day']     = '*'
default['update']['weekday'] = '*'

# reboot every hour for testing purposes will be changed to daily for distribution.
default['reboot']['time'] = '05:30'

default['git']['branch']   = 'dev'
default['git']['repo']     = 'https://github.com/uccs-se/chef-repo'
default['git']['revision'] = 'HEAD'
default['git']['depth']    = 1
default['git']['retries']  = 3
default['git']['delay']    = 300

# For further information, see the Chef documentation (http://docs.getchef.com/essentials_cookbook_attribute_files.html).
