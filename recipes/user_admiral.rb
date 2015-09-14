group 'admiral'

user 'admiral' do
  supports :manage_home => true
  comment 'Professor'
  group   'admiral'
  home    '/home/admiral'
  shell   '/bin/bash'
  not_if { ::File.directory?('/home/admiral') }
end

cookbook_file '/etc/sudoers.d/admiral'  do
  source 'admiral.sudo'
  owner 'root'
  group 'root'
  mode 00440
end
