require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
    "Whatever"
  end

  get '/secret' do
    "I like rainbows"
  end

  get '/random-cat' do
    @name = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
  end


  get '/named-cat' do
    p params
    @name = params[:name]
    @last_name = params[:last_name]
    @colour = params[:colour]
    erb(:index)
  end
