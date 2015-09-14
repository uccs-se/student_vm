package 'xrdp'

# cookbook_file '/lib/systemd/system/xrdp.service' do
#   source 'xrdp/xrdp.service'
#   user   'root'
#   group  'root'
#   mode   00644
# end
#
# cookbook_file '/lib/systemd/system/xrdp-sesman.service' do
#   source 'xrdp/xrdp-sesman.service'
#   user   'root'
#   group  'root'
#   mode   00644
# end
#
# execute 'sudo systemctl daemon-reload'

service 'xrdp' do
  action [ :enable, :start ]
end