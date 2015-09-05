group 'admiral'

user 'admiral' do
  comment 'Professor'
  group   'admiral'
  home    '/home/admiral'
  shell   '/bin/bash'
end

directory '/home/admiral' do
  recursive true
  owner     'admiral'
  group     'admiral'
  mode      00755
end

cookbook_file '/etc/sudoers.d/admiral'  do
  source 'admiral.sudo'
  owner 'root'
  group 'root'
  mode 00440
end
