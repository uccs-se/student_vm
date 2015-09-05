group 'ensign'

user 'ensign' do
  comment 'Ensign'
  group   'ensign'
  home    '/home/ensign'
  shell   '/bin/bash'
  password '$1$mBq6x0Mn$Ux6mnt.wvIGCcWMvzIiQt/'
end

directory '/home/ensign' do
  recursive true
  owner     'ensign'
  group     'ensign'
  mode      00755
end

cookbook_file '/etc/sudoers.d/ensign'  do
  source 'ensign.sudo'
  owner 'root'
  group 'root'
  mode 00440
end
