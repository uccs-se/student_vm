group 'ensign'

user 'ensign' do
  supports :manage_home => true
  comment 'Ensign'
  group   'ensign'
  home    '/home/ensign'
  shell   '/bin/bash'
  password '$1$mBq6x0Mn$Ux6mnt.wvIGCcWMvzIiQt/'
  not_if { ::File.directory?('/home/ensign') }
end

cookbook_file '/etc/sudoers.d/ensign'  do
  source 'sudoers.d/ensign'
  owner 'root'
  group 'root'
  mode 00440
end
