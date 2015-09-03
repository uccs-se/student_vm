group 'ensign'

user 'ensign' do
  comment 'The student account.'
  group   'ensign'
  home    '/home/ensign'
  shell   '/bin/bash'
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