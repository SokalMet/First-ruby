source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.2'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'wicked_pdf', '~> 1.1'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'wkhtmltopdf-binary', '~> 0.12.3.1'
gem 'devise', '~> 4.3.0'                              # User authentication for users
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :development do
  gem 'active_record_query_trace', '~> 1.5', '>= 1.5.4' # Print stack trace of all queries to the Rails log
  gem 'better_errors', '~> 2.3'                       # Better error descriptions in console
end
group :development, :test, :staging do
  gem 'awesome_print', '~> 1.8'                       # Nicely formatted data structures in console.
  gem 'factory_girl_rails', '~> 4.8.0'                # Test data generator -- see spec/factories/factories.rb
  gem 'faker', '~> 1.8', '>= 1.8.4'                   # Easy way to add fake data: names, email addresses, etc.
  gem 'git-smart', '~> 0.1.10'                        # Allows "git smart-pull" for less merge messes
end
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
group :test do
  gem 'rspec-html-matchers'                           # For testing complex html output, useful for testing forms
  gem 'rspec-rails', '~> 3.6.1'                       # rspec-rails is a testing framework for Rails 3+.
  gem 'rspec-sidekiq', '~> 3.0.3'                     # Rspec helper for Sidekiq
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
