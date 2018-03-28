set :user, 'root'

server '54.37.9.188',
       user: fetch(:user),
       roles: %w{web app db},
       ssh_options: {forward_agent: true}

set :deploy_to, "/var/www/"

set :rails_env, 'production'

set :conditionally_migrate, true

set :keep_releases, 4

set :branch, 'master'

set :app_version, '0.1'

set :app_environment, 'production'