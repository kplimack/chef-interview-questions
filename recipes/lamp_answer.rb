
directory node[:lamp][:deploy_path] do
  recursive true
end

node[:lamp][:cookbooks].each { |cb| include_recipe cb }

git node[:lamp][:deploy_path] do
  repo node[:lamp][:repo]
end

web_app 'blog' do
  docroot node[:lamp][:deploy_path]
  server_name node[:lamp][:server][:name]
  server_aliases node[:lamp][:server][:aliases]
  cookbook 'apache2'
end
