require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
    "Whatever"
  end

  get '/secret' do
    "I like rainbows"
  end

  get '/cat' do
    @name = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
  end
