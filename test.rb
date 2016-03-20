ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require_relative 'encrypted_card_client.rb'

include Rack::Test::Methods

def app
  Sinatra::Application
end

