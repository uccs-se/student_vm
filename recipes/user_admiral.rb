group 'admiral'

user 'admiral' do
  comment 'The student account.'
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

file '/etc/sudoers.d/admiral'  do
  owner 'root'
  group 'root'
  mode 00440
  content
  "
# student user privilege specification
admiral ALL=(ALL) NOPASSWD: ALL
"
end