configure :development, :test do
 # set :database, 'sqlite:///dev.db'
 # set :database, 'sqlite3:name.db'
 # set :show_exceptions, true
 ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'name.db'
) 
end

configure :production do
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')

 ActiveRecord::Base.establish_connection(
   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
   :host     => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end

