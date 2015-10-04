
execute 'knife_solo' do 
  command 'sudo rm -rf /home/chef/.chefdk/gem/ruby/2.1.0/gems/knife-solo-*'
end 

chef_gem 'knife-solo'
