require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

#set :session_secret, 'secret'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/player-form' do
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/Attack' do
    @game = $game
    @game.attack
    erb :attack
  end

  run! if app_file == $0
end
