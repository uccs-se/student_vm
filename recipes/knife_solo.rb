
execute 'knife_solo' do 
  command 'sudo rm -rf /home/chef/.chefdk/gem/ruby/2.1.0/gems/knife-solo-*'
  not_if { ::File.writable?('/home/chef/.chefdk/gem/ruby/2.1.0/gems/knife-solo-0.5.1/CHANGELOG.md') }
end 

chef_gem 'knife-solo'
