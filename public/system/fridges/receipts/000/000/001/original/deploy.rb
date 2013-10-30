load 'deploy' if respond_to?(:namespace) # cap2 differentiator

set :user, 'leukekaartjes'
set :application, 'default'

set :repository, 'git@github.com:concuria/leukekaartjes.git'
set :branch, "master"

server 'pro-008.openminds.be', :app, :web, :db, :primary => true

begin
  require 'openminds_deploy/defaults'
  require 'openminds_deploy/git'
  require 'openminds_deploy/passenger'
  require 'openminds_deploy/rails3'
rescue LoadError => e
  $stderr.puts <<INSTALL
There was an exception while trying to deploy your application. Most likely you do not have the openminds_deploy gem installed.
You can install the gem like this:
  gem install openminds_deploy
INSTALL
  $stderr.puts "Exception thrown: #{e}"
  exit 1
end
