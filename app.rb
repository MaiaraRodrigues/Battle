require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

class Battle < Sinatra::Base

  get '/' do
    "Hello battle!"
  end

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
