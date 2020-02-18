# Load DSL and set up stages
require "capistrano/setup"
require "capistrano/deploy"

require 'capistrano/rails'
require 'capistrano/bundler'
require 'capistrano/rvm'
require 'capistrano/puma'
require 'capistrano/figaro_yml'
install_plugin Capistrano::Puma  # Default puma tasks
install_plugin Capistrano::Puma::Workers

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }