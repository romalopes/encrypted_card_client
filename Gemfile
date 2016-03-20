source "https://rubygems.org"
# This should be the same as the version of Ruby you have installed locally
ruby "2.0.0" 

gem 'sinatra'
gem "json"
gem "activerecord"
gem "sinatra-activerecord"
gem 'sinatra-flash'
gem 'sinatra-redirect-with-flash'

group :development, :test do
  gem 'sqlite3'
  gem "rack-test"
  gem "rake"
  gem 'rspec-rails', '2.13.1'
  gem 'factory_girl_rails', '4.2.1'
end

group :development do
 gem "tux"
end

group :production do
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end