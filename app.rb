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
   "<div style='border: 2px dashed red'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
  end

 