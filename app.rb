require 'sinatra'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/attack'

class Battle < Sinatra::Base
  # enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)

    redirect '/play'
  end

  get '/play' do
    @game = $game

    erb :play
  end

  get '/attack' do
    @game = $game
    Attack.new.attack(@game.waiting_player)
    @game.switch_turns

    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
