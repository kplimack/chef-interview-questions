# lamp
default[:lamp][:repo] = 'https://github.com/WordPress/WordPress.git'
default[:lamp][:deploy_path] = '/data/www/mySite'
default[:lamp][:server] = {
  name: 'localhost',
  aliases: %w{ blog.example.com }
}
default[:lamp][:cookbooks] = %w( php php::module_mysql apache2::mod_php git )
