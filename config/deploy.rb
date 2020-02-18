# config valid for current version and patch releases of Capistrano
lock "~> 3.12.0"
set :application, 'vile_weather'
set :repo_url, 'git@github.com:LitovVladimir/vile_weather.git'

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets',
                                               'public/uploads', 'public/documentation', 'exports')