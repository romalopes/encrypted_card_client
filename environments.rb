require 'sinatra'
configure :development, :test do
 # set :database, 'sqlite3:name.db'
 # set :show_exceptions, true
	 ActiveRecord::Base.establish_connection(
	  :adapter  => 'sqlite3',
	  :database => 'name.db'
	) 
end
