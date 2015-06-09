name             'chef-interview-questions'
maintainer       'Jake Plimack Photography, LLC'
maintainer_email 'jake.plimack@gmail.com'
license          'All rights reserved'
description      'Installs/Configures chef-interview-questions'
long_description 'Installs/Configures chef-interview-questions'
version          '0.1.0'


%w( apt apache2 xinetd git php ).each { |d| depends d }
