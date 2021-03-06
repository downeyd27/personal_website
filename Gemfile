
source 'https://rubygems.org'
ruby '2.2.2'

gem 'awesome_print'
gem 'autoprefixer-rails'
gem 'coffee-rails', '~> 4.1.0'
# TODO: Set up caching for images and objects compatible with Heroku
gem 'connection_pool' # Added for dalli to thread with puma
gem 'dalli' # memcache
gem 'memcachier'
gem 'htmlcompressor', '~> 0.3.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'meta-tags', '~> 2.1'
gem 'newrelic_rpm'
gem 'paperclip'
gem 'puma'
gem 'pg'
gem 'phony'
gem 'rack-offline'
gem 'rails', '4.2.6'
gem 'sass-rails', '~> 5.0'
gem 'sprockets', '~> 3.0'
gem 'turbolinks'
gem 'twilio-ruby', '~> 4.11.1'
gem 'uglifier', '>= 1.3.0'

gem 'sdoc', '~> 0.4.0', group: :doc

group :development do
  gem 'better_errors', '~> 2.1', '>= 2.1.1'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'byebug', '~> 8.2', '>= 8.2.4'
  gem 'guard'
  # TODO: Set up and test to make sure javascript files are watched and compiled on reload
  # gem 'guard-concat', require: false
  # gem 'guard-s3',   require: false
  # gem 'guard-spork', require: false
  gem 'guard-sass',   require: false
  gem 'guard-rspec',  require: false
  gem 'guard-uglify', require: false
  # gem 'letter_opener'
  # TODO: set up Rails Panel in Chrome Dev Tools... May need to specificy livereload/Rack::Reload to ignore tmp/ folder
  # gem 'meta_request'
  gem 'rack-livereload'
  gem 'quiet_assets', '~> 1.1'
  gem 'rails_real_favicon'
  gem 'spring', '~> 1.7', '>= 1.7.1'
  gem 'web-console', '~> 2.0'
end

group :test do
  gem 'capybara', '~> 2.7'
  # TODO: configure database cleaner with RSpec/Capybara
  # https://github.com/DatabaseCleaner/database_cleaner
  # gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.7'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
  gem 'simplecov', '~> 0.11.2', require: false
  gem 'faker', '~> 1.6', '>= 1.6.3'
end

group :development, :test do
  gem 'launchy', '~> 2.4', '>= 2.4.3'
  gem 'pry', '~> 0.10.3'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
end

group :production do
  gem 'aws-sdk', '< 2.0'
  gem 'rails_12factor' # Recommended for Heroku
end
