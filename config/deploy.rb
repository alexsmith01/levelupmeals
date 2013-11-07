load 'deploy' if respond_to?(:namespace) # cap2 differentiator

set :stages, %w(production)
set :default_stage, "production"
require 'capistrano/ext/multistage'

set :user, 'levelupload'
set :application, 'default'

set :repository, 'git@github.com:alexsmith01/levelupmeals.git'
set :branch, "master"

server 'orders.levelupmeals.com', :app, :web, :db, :primary => true

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

namespace :logs do

  desc "Tail staging logs"
  task :staging, :roles => :app do
    trap("INT") { puts 'Interupted'; exit 0; }
    run "tail -f #{shared_path}/log/staging.log" do |channel, stream, data|
      puts  # for an extra line break before the host name
      puts "#{channel[:host]}: #{data}"
      break if stream == :err
    end
  end

  desc "Tail development logs"
  task :staging, :roles => :app do
    trap("INT") { puts 'Interupted'; exit 0; }
    run "tail -f #{shared_path}/log/development.log" do |channel, stream, data|
      puts  # for an extra line break before the host name
      puts "#{channel[:host]}: #{data}"
      break if stream == :err
    end
  end

  desc "Tail production logs"
  task :production, :roles => :app do
    trap("INT") { puts 'Interupted'; exit 0; }
    run "tail -f #{shared_path}/log/production.log" do |channel, stream, data|
      puts  # for an extra line break before the host name
      puts "#{channel[:host]}: #{data}"
      break if stream == :err
    end
  end
end

task :uname do
  run "uname -a"
end

namespace :deploy do
  desc "Create public folder system symlink to shared"
  task :system_symlink, roles: :app do
    run "mkdir -p #{deploy_to}/shared/system"
    run "rm -rf #{release_path}/public/system"
    run "ln -s #{deploy_to}/shared/system #{release_path}/public/system"
  end
end

after "deploy:finalize_update", "deploy:system_symlink"