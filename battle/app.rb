require 'sinatra/base'

#set :session_secret, 'secret'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/player-form' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    p session
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end

  run! if app_file == $0
end
