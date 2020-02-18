server '62.109.28.190', user: 'deploy', roles: %w{app db web}, my_property: :my_value

set :stage, :production
set :rails_env, :production
set :deploy_to, "/home/deploy/vile_weather"
set :rvm_custom_path, '/usr/share/rvm'

set :puma_threads, [0, 10]
set :puma_workers, 8

set :puma_init_active_record, true
set :puma_preload_app, true
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call