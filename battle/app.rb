require 'sinatra/base'
require_relative './lib/player'

#set :session_secret, 'secret'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/player-form' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb :play
  end

  get '/Attack' do
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb :attack
  end

  run! if app_file == $0
end
