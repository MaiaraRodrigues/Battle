require 'sinatra'
require 'shotgun'

get '/' do
    "Hello!"
  end

  get '/secret' do
    "I like rainbows"
  end