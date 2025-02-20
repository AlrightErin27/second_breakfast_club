source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.8'

# Rails framework
gem 'rails', '~> 5.2.8', '>= 5.2.8.1'

# Database
gem 'pg', '>= 0.18', '< 2.0'  # PostgreSQL

# Web Server
gem 'puma', '~> 3.11'

# Stylesheets
gem 'sass-rails', '~> 5.0'

# JavaScript & Asset Management
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

# Frontend Framework
gem 'foundation-rails' # Foundation CSS framework

# Utilities
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# Environment Variables
gem 'dotenv-rails', '~> 2.7.6'  # Compatible with Ruby 2.7.8

# Performance Optimization
gem 'bootsnap', '>= 1.1.0', require: false

# Debugging & Development
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
  gem 'chromedriver-helper' # Ensure compatibility
end

# Timezone Data for Windows
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
