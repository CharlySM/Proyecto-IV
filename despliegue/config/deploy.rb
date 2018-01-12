# config valid for current version and patch releases of Capistrano
#require 'capistrano/ext/multistage'
require 'sshkit/dsl'
SSHKit.config.output_verbosity = :debug
set :stages, ["staging", "production"]
set :default_stage, "staging"
lock "~> 3.10.1"
#set :stages, %w(testing production)
set :default_stage, "liga"
set :application, "Liga_Futbol"
#set :repo_url, "git@example.com:me/my_repo.git"
#set :scm, :git
set :scm, :git
set :repo_url, "https://github.com/CharlySM/Proyecto-IV"
set :user, "ubuntu"
set :deploy_to, "~/app"

#role :web, "ec2-XX-compute-1.amazonaws.com" # Your HTTP server, Apache/etc
#set :deploy_to, ''
set :pty, true
set :ssh_options, {
  forward_agent: true,
  auth_methods: ["key"],
  keys: ["~/app/key.pem"]
}
desc "inicio"
task :inicio do
end
set :use_sudo, true
#set :execute_app, :head
#execute "sudo ruby app/current/sinatraapp/app.rb -p 80"#desc "Update feeds"

namespace :execute_app do
#desc "execute"
#task :execute do
  #on "ec2-18-195-79-58.eu-central-1.compute.amazonaws.com" do
   exec "ssh -i key.pem ubuntu@ec2-18-195-79-58.eu-central-1.compute.amazonaws.com -t 'sudo ruby app/current/sinatraapp/app.rb -p 80'"
    #execute "sudo ruby app/current/sinatraapp/app.rb -p 80"
#  end
end
#end

#end
#end
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
#before "inicio", "execute"
