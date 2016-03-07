require 'sinatra'
configure :development do
 # set :database, 'sqlite3:name.db'
 # set :show_exceptions, true
	 ActiveRecord::Base.establish_connection(
	  :adapter  => 'sqlite3',
	  :database => 'name_dev.db'
	) 
end

configure :test do
 # set :database, 'sqlite3:name.db'
 # set :show_exceptions, true
	 ActiveRecord::Base.establish_connection(
	  :adapter  => 'sqlite3',
	  :database => 'name_test.db'
	) 
end
