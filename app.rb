require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @Player1_Name = params[:Player1_Name]
    @Player2_Name = params[:Player2_Name]
    erb(:play)
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
