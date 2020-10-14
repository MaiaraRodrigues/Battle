require 'sinatra'
require 'shotgun'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Player1_Name] = params[:Player1_Name]
    session[:Player2_Name] = params[:Player2_Name]
    session[:Player1_HP] = 10
    session[:Player2_HP] = 10
    redirect '/play'
  end

  get '/play' do
    @Player1_Name = session[:Player1_Name]
    @Player2_Name = session[:Player2_Name]
    @Player1_HP = session[:Player1_HP]
    @Player2_HP = session[:Player2_HP]
    erb :play
  end

  # get '/names' do
  #   erb(:play)
  # end

end

  # get '/secret' do
  #   "I like rainbows"
  # end
  #
  # get '/random-cat' do
  #   @name = ["Amigo", "Oscar", "Viking"].sample
  #   erb(:index)
  # end
  #
  # get '/cat_form' do
  #   erb :cat_form
  # end
  #
  # post '/named-cat' do
  #   p params
  #   @name = params[:name]
  #   @last_name = params[:last_name]
  #   @colour = params[:colour]
  #   erb(:index)
  # end
