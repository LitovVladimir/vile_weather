source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'

# Persistence
gem 'pg'

# Assets and etc.
gem 'coffee-rails', '~> 4.2.2'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# MarkUps & Gallery
gem 'bootstrap', '~> 4.3.1'
gem 'bootstrap-datepicker-rails'
gem 'rails-jquery-autocomplete', '~> 1.0.5'
gem 'select2-rails'
gem 'simple_form'
gem 'slim'
gem 'will_paginate-bootstrap4'

# Servers
gem 'puma', '~> 3.11'
gem 'puma_worker_killer'

# Build JSON APIs
gem 'jbuilder', '~> 2.5'

# Domain logic support
gem 'active_interaction', '~> 3.7'
gem 'listen'
gem 'rspec-rails'
gem 'faraday'
gem 'faraday_middleware'

# Environment settings management
gem 'figaro'

# Scheduling and background jobs
gem 'sidekiq'
gem 'sidekiq-limit_fetch'
gem 'sidekiq-scheduler', '~> 3.0.0'
gem 'sidekiq-unique-jobs'


# Console tweaks
group :console do
  gem 'awesome_print'
  gem 'hirb'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'better_errors'
  gem 'capistrano', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rvm', require: false
  gem 'capistrano3-puma', require: false
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]