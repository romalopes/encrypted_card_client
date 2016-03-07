source "https://rubygems.org"
# This should be the same as the version of Ruby you have installed locally
ruby "2.0.0" 

gem 'sinatra'
gem "json"
gem "activerecord"
gem "sinatra-activerecord"
gem 'sinatra-flash'
gem 'sinatra-redirect-with-flash'


# gem 'lawn_mowing', '0.1.0',  :path=>'lawn_mowing'
gem 'lawn_mowing', '0.1.0', :git => 'git://github.com/romalopes/lawn_mowing.git'

# gem 'sinatra-sequel'
# gem 'sqlite3'

group :development, :test do
  gem 'sqlite3'
  gem "rack-test"
  gem "rake"
  gem 'rspec-rails', '2.13.1'
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.6'
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.1'
end

group :development do
 gem "tux"
end

# gem 'sqlite3', :group => 'development', :test
# gem 'pg', :group => 'production'

group :production do
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  gem 'pg' #, '0.15.1'
  gem 'rails_12factor', '0.0.2'
end