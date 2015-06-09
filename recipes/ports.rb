include_recipe 'chef-interview-questions'
include_recipe 'xinetd'

xinetd_service "http" do
  protocol 'tcp'
  server "/bin/dmesg"
  wait false
  port '80'
  user 'root'
  socket_type "stream"
  log_type 'SYSLOG authpriv'
  log_on_success 'HOST PID'
  log_on_failure 'HOST'
  action :enable
end

include_recipe 'apache2'
