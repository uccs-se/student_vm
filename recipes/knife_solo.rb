
execute 'knife_solo' do 
  command "sudo su chef -l -c 'sudo /opt/chefdk/bin/chef gem uninstall knife-solo && sudo rm -rf /home/chef/.chefdk/gem/ruby/2.1.0/gems/knife-solo-* && sudo su chef -l -c '/opt/chefdk/bin/chef gem install knife-solo'"
end 

