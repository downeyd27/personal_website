source 'https://rubygems.org'

ruby '2.2.2'
gem 'rails', '4.2.6'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'autoprefixer-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'turbolinks'
gem 'meta-tags', '~> 2.1'
gem 'actionpack-page_caching', '~> 1.0', '>= 1.0.2'
gem 'actionpack-action_caching', '~> 1.1', '>= 1.1.1'
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Unicorn as the app server
# gem 'unicorn'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development do
  gem 'better_errors', '~> 2.1', '>= 2.1.1'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'quiet_assets', '~> 1.1'
  gem 'byebug', '~> 8.2', '>= 8.2.4'
  gem 'web-console', '~> 2.0'
  gem 'spring', '~> 1.7', '>= 1.7.1'
end

gem 'rails_12factor', group: :production # Recommendation for Heroku
group :test do
  gem 'capybara', '~> 2.7'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
  gem 'factory_girl_rails', '~> 4.7'
  gem 'simplecov', '~> 0.11.2', require: false
end

group :development, :test do
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
  gem 'launchy', '~> 2.4', '>= 2.4.3'
  gem 'pry', '~> 0.10.3'
end
