require 'sinatra'
require 'player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do

    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])

    $player_1_score = 60
    $player_2_score = 60

    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name

    @player_1_score = $player_1_score
    @player_2_score = $player_2_score

    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name

    @player_1_score = $player_1_score = 60
    @player_2_score = $player_2_score -= 10

    @confirmation = @player_1_name + " attacked " + @player_2_name

    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
