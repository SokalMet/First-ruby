source 'https://rubygems.org'
ruby '2.4.2'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'responders', '~> 2.4'
gem 'dalli', '~> 2.7', '>= 2.7.6'                       # Required for memcachier
gem 'pg', '~> 0.21.0'                                   # Postgress driver
gem 'puma', '~> 3.9'                                    # Use Puma as the app server
gem 'sass-rails', '~> 5.0'                              # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'                              # Use Uglifier as compressor for JavaScript assets
gem 'sprockets-rails', '~> 3.2.1'                       # Sprockets Rails integration
gem 'wicked_pdf', '~> 1.1'
gem 'jquery-rails', '~> 4.3.1'                          # JQuery
gem 'jquery-ui-rails', '~> 6.0.1'                       # JQuery UI
gem 'coffee-rails', '~> 4.2'                            # Use CoffeeScript for .coffee assets and views
gem 'turbolinks', '~> 5'                                # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.5'                                # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'autoprefixer-rails', '~> 7.1', '>= 7.1.2.6'        # Parse CSS and add vendor prefixes to CSS rules
gem 'bootstrap-select-rails', '~> 1.12', '>= 1.12.1'    # jQuery plugin that utilizes Bootstrap's dropdown.js to style.
gem 'devise', '~> 4.3.0'                                # User authentication for users
gem 'font-awesome-rails', '~> 4.7.0.2'                  # http://fontawesome.io/get-started/ for icons
gem 'newrelic_rpm', '~> 4.3', '>= 4.3.0.335'            # Gem to support new relic application monitoring
gem 'nokogiri', '~> 1.8'                                # HTML and XML Parser
gem 'will_paginate', '~> 3.1.0'                         # For pagination
gem 'sendgrid-ruby'                                     # For emails sending
gem 'sweetalert-rails'


group :production do
  gem 'font_assets', '~> 0.1.14'                        # Let Cloudfront serve web fonts OK: http://kennethjiang.blogspot.com/2014/07/set-up-cors-in-cloudfront-for-custom.html
  gem 'rack-cors', '~> 1.0.1'                           # Also helps with Cloudfront fonts: https://singlebrook.com/2012/10/02/cloudfront-cdn-with-rails-on-heroku/
  gem 'rails_12factor', '~> 0.0.3'                      # Helps speed up deploys on heroku
end

group :development do
  gem 'active_record_query_trace', '~> 1.5', '>= 1.5.4' # Print stack trace of all queries to the Rails log
  gem 'better_errors', '~> 2.3'                         # Better error descriptions in console
  gem 'guard', '~>2.14.1'                               # Run tests when you save a file (spec, cucumber, spec-features) https://github.com/guard/guard
  gem 'guard-cucumber', '~> 2.1.2'                      # To config/run cucumber features automatically with guard
  gem 'guard-rspec', '~> 4.7.3'                         # To config/run rspec features automatically with guard
  gem 'traceroute', '~> 0.5.0'                          # Allows for easy searching of unused routes - "$ rake traceroute"
  gem 'spring'                                          # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '~> 3.5.1'                         # Access an IRB console on exceptions page/console
end

group :development, :test do
  gem 'pry-byebug', '~> 3.4', '>= 3.4.3'                # Call 'debugger' anywhere in the code to get a debugger console
  gem 'awesome_print', '~> 1.8'                         # Nicely formatted data structures in console.
  gem 'factory_girl_rails', '~> 4.8.0'                  # Test data generator -- see spec/factories/factories.rb
  gem 'faker', '~> 1.8', '>= 1.8.4'                     # Easy way to add fake data: names, email addresses, etc.
  gem 'git-smart', '~> 0.1.10'                          # Allows "git smart-pull" for less merge messes
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]   # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'capybara', '~> 2.15', '>= 2.15.1'                # Capybara is an integration testing tool for rack based web apps
  gem 'rails-controller-testing', '~> 1.0.2'            # Extracting `assigns` and `assert_template` from ActionDispatch.
end

group :test do
  gem 'rspec-html-matchers'                             # For testing complex html output, useful for testing forms
  gem 'rspec-rails', '~> 3.6.1'                         # rspec-rails is a testing framework for Rails 3+
  gem 'capybara-email', '~> 2.5.0'                      # Allows testing email messages that get sent out in test env
  gem 'selenium-webdriver', '~> 3.5', '>= 3.5.1'        # WebDriver is a tool for writing automated tests of websites.
  gem 'shoulda-callback-matchers', '~> 1.1.4'           # Matchers to test before, after and around hooks
  gem 'shoulda-matchers', '~> 3.1.2'                    # Collection of testing matchers extracted from Shoulda http://thoughtbot.com/community
  gem 'site_prism', '~> 2.9'                            # for using page-object pattern in cucumber
  gem 'test-prof', '0.2.1'                              # https://evilmartians.com/chronicles/testprof-a-good-doctor-for-slow-ruby-tests
  gem 'timecop', '~> 0.9.1'                             # Set system time for tests
  gem 'mutest-rspec', '~> 0.0.7'                        # Mutation testing for ruby
  gem 'database_cleaner', '~> 1.6', '>= 1.6.1'          # database_cleaner is not required, but highly recommended
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
