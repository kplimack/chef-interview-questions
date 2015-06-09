# chef-interview-questions-cookbook
This repo contains interview questions that can be fired up in a VagrantVM in order to evaluate how a candidate actually solves problems.
## Ports
Test-kitchen will setup a forwarded port, usually `http://localhost:8080`. We want to see Apache's "It Works!" page, but when we navigate there, we seem to get dmesg spew. Figure out what's going on and get the "It Works!" page to show up in the browser. This is a VM, so you can do whatever you want to it, install any tools, and manage services and processes without any concern. In order to login to this VM, run `kitchen login ports-debian-74`

## LAMP
In this exercise, you will configure a LAMP stack! Okay, you're actually skipping MySQL... Unit tests are provided and you will make them pass.  In order to do that, you will use a provided Github repository, install prerequisites, and configure Apache2. In order to run the unit tests, run `kitchen verify lamp-debian-74`

## License and Authors

Author:: Jake Plimack Photography, LLC (<jake.plimack@gmail.com>)
