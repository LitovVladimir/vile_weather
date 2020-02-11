source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'

# Persistence
gem 'pg'

# Assets and etc.
gem 'coffee-rails', '~> 4.2'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# Servers
gem 'puma', '~> 3.11'

# Build JSON APIs
gem 'jbuilder', '~> 2.5'

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
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]