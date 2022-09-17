# This file is used by Rack-based servers to start the application.

require_relative "config/environment"
# set :application, "reeltime"
# set :repo_url, "git@github.com:kadeillian21/reeltime.git"

# # Deploy to the user's home directory
# set :deploy_to, "/home/deploy/#{fetch :application}"

# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# # Only keep the last 5 releases to save disk space
# set :keep_releases, 5

run Rails.application
Rails.application.load_server
