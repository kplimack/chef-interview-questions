require 'spec_helper'

require 'serverspec'
set :backend, :exec

describe 'Apache Server' do
  it 'is listening on port 80' do
    expect(port(80)).to be_listening
  end

  it 'has a running service of apache2' do
    expect(service('apache2')).to be_running
  end
end

dir = '/data/www/mySite'

describe "lamp-stack" do
  describe file(dir) do
    it { should exist }
    it { should be_directory }
    it { should_not be_symlink }
  end

  describe file("#{dir}/.git/config") do
    it { should exist }
  end

  describe 'apache' do
    describe command('apache2ctl -M') do
      its(:stdout) { should contain('php5_module') }
    end
    describe command('php -m') do
      its(:stdout) { should contain('mysql') }
    end
    describe command('curl -I localhost') do
      its(:stdout) { should contain('Location: http://localhost/wp-admin/setup-config.php') }
    end
  end
end
