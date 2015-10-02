
execute 'knife_solo' do 
  command "sudo su chef -l -c 'bash -i /opt/chefdk/bin/chef gem install knife-solo'"
end 

