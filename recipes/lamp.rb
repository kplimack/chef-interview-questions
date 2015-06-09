include_recipe 'chef-interview-questions' # this will run apt-get update for you

# These attributes are already set to the correct values

# node[:lamp][:repo] => github repository
# node[:lamp][:deploy_path] => path to setup site on disk
# node[:lamp][:server] = {
#     :name => server name
#     :aliases => server aliases
# }

######
# Given the variables above, setup a vanilla LAMP stack... okay, you can skip mysql ;)
# The repo above contains the latest and greatest Wordpress code.  Get it into :install_path,
# then configure Apache2 to host the site.  When you are ready to test your code, save it and run
# `kitchen verify`
######
