source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
# This library provides integration of RubyMoney - Money gem with Rails
gem 'money-rails'
# Object geocoding (by street or IP address), reverse geocoding (coordinates to street address),
# distance queries for ActiveRecord and more
gem 'geocoder'
gem 'sorbet-rails'

# Authentication
gem 'devise'
gem 'devise_token_auth'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # rspec
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
    gem lib, git: "https://github.com/rspec/#{lib}.git", branch: 'main'
  end
end

group :development do
  gem 'listen', '~> 3.2'
  # Solargraph is a Ruby gem that provides intellisense features through Microsoft's solargraph.org.
  gem 'solargraph'
  gem 'rubocop', '~> 0.90.0'
  gem 'rails_best_practices'
  gem 'annotate'
end

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'shoulda-matchers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
