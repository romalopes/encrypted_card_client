require 'sinatra'
# require 'sinatra/sequel'
configure :development, :test do
 # set :database, 'sqlite:///dev.db'
 # set :database, 'sqlite3:name.db'
 # set :show_exceptions, true
	 ActiveRecord::Base.establish_connection(
	  :adapter  => 'sqlite3',
	  :database => 'name.db'
	) 
end



# configure do
# 	# DB = Sequel.connect('sqlite://database.db')
# 	DB = Sequel.connect(ENV['DATABASE_URL'] || 'sqlite://database.db')

# 	# DB setup here
# end
