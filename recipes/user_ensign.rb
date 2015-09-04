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

file '/etc/sudoers.d/ensign'  do
  owner 'root'
  group 'root'
  mode 00440
  content
  "
# student user privilege specification
ensign ALL=(ALL) ALL
"
end
