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
default['update']['hour']    = '*'
default['update']['day']     = '*'
default['update']['weekday'] = '*'
default['update']['month']   = '*'

# reboot every hour for testing purposes will be changed to daily for distribution.
default['reboot']['minute']  = '30'
default['reboot']['hour']    = '5'
default['reboot']['day']     = '*'
default['reboot']['weekday'] = '*'
default['reboot']['month']   = '*'

default['git']['branch']   = 'dev'
default['git']['repo']     = 'https://github.com/uccs-se/chef-repo'
default['git']['revision'] = 'HEAD'
default['git']['depth']    = 1
default['git']['retries']  = 3
default['git']['delay']    = 300

# For further information, see the Chef documentation (http://docs.getchef.com/essentials_cookbook_attribute_files.html).
