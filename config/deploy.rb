# config valid only for current version of Capistrano
lock '~> 3.10.0'

set :application, 'teststrava'
set :repo_url, "git@github.com:xero88/strava-test.git"

set :rvm_ruby_version, 'ruby-2.4.3'
set :rvm_type, :system

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
#set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
