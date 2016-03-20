require 'sinatra'
require 'rubygems'
require 'json'
require 'sinatra/activerecord'
require './environments'
require 'net/http'
require 'net/https'
require "uri"


get "/users" do 
  uri = URI.parse("http://localhost:3030")
  http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Get.new("/users?token=#{params[:token]}")
  response = http.request(request)
  puts "1- response.body:#{response.body}"
  return { result: response.body}.to_json
end

#ex: http://localhost:4567/create_user_master?password=romalopes
get "/create_user_master" do 
    uri = URI.parse("http://localhost:3030")
    @http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new("/create_user_master?password=#{params[:password]}")
    response = @http.request(request)
    return { result: response.body}.to_json
end

# http://localhost:4567/create_user?token=UVYivzgDlpSQp0o9bMBmHcOkvxcvKJd8B0Z3ih0NkUlIeTgfrH&login=romalopes&password=romalopes
get "/create_user" do 
  uri = URI.parse("http://localhost:3030")
  @http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Post.new("/users?login=#{params[:login]}&password=#{params[:password]}&token=#{params[:token]}")
  response = @http.request(request)
  puts "\n\n-----2- \n\n\nresponse.body:#{response.body}"
  return { result: response.body}.to_json
  
  # uri = URI.parse("http://localhost:3031")
  # http = Net::HTTP.new(uri.host, uri.port)
  # request = Net::HTTP::Get.new("/users")
  # response = http.request(request)
  # puts "1- response.body:#{response.body}"


  # uri = URI.parse("http://localhost:3031/users")
  # header = {"Content-Type" => 'text/json'}
  # user = {user: {login: "login_2", hashed_password: "hashed_password"}}
  # # Create the HTTP objects
  # http = Net::HTTP.new(uri.host, uri.port)
  # request = Net::HTTP::Post.new(uri.request_uri, header)
  # request.body = user.to_json
  # # Send the request
  # response = http.request(request)
  # puts "\n\n-----2- request.body:#{request.body}\n\n\nresponse.body:#{response.body}"


    # uri = URI.parse("http://localhost:3030")
    # @http = Net::HTTP.new(uri.host, uri.port)
    # request = Net::HTTP::Post.new("/users?login=#{params[:login]}&password=#{params[:password]}")
    # user = {user: {login: params[:login], password: params[:password]}}
    # request.set_form_data(user)
    # response = @http.request(request)
    # puts "\n\n-----2- \n\n\nresponse.body:#{response.body}"


    # url = URI.parse('http://localhost:3030/users')
    # appid = 'YahooDemo'
    # context = 'Italian sculptors and painters of the renaissance favored the Virgin Mary for inspiration'
    # post_args = {
    #    'appid' => appid,
    #    'context' => context,
    #    'params' => {user: {login: "login_2", hashed_password: "hashed_password"}}.to_json
    # }
    # resp, data = Net::HTTP.post_form(url, post_args)
    # puts "\n\n resp.body:#{resp.body}  data:#{data}"



  status 200
  return { result: response.body}.to_json
end

# ex: http://localhost:4567/authenticate_user?login=user_master&password=romalopes
# result: {"result":"{\"token\":\"J2xHX5IThnRAbBhhAnAMHfEJTIRAkyM3i3bPJtQDPnhENjZcvg\"}"}
get "/authenticate_user" do 
  uri = URI.parse("http://localhost:3030")
  @http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Post.new("/authenticate?login=#{params[:login]}&password=#{params[:password]}")
  response = @http.request(request)
  puts "\n\n-----2- \n\n\nresponse.body:#{response.body} ---params:params:#{params}"
  return { result: response.body}.to_json
end

# http://localhost:4567/create_card?token=TOKEN&key=romalopes1&credit_card_number=1234567890&password=password
get "/create_card" do 
  uri = URI.parse("http://localhost:3030")
  @http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Post.new("/credit_cards?token=#{params[:token]}&password=#{params[:password]}&key=#{params[:key]}&credit_card_number=#{params[:credit_card_number]}")
  response = @http.request(request)
  puts "\n\n-----2- \n\n\nresponse.body:#{response.body} ---params:params:#{params}"
  return { result: response.body}.to_json
end

get "/retrieve_credit_card_number" do 
  uri = URI.parse("http://localhost:3030")
  @http = Net::HTTP.new(uri.host, uri.port)
  request = Net::HTTP::Post.new("/retrieve_credit_card_number?token=#{params[:token]}&password=#{params[:password]}&key=#{params[:key]}")
  response = @http.request(request)
  puts "\n\n-----2- \n\n\nresponse.body:#{response.body} ---params:params:#{params}"
  return { result: response.body}.to_json
end

