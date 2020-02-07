require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $Player1 = Player.new(params[:player_1_name])
    $Player2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $Player1.name
    @player_2_name = $Player2.name
    @player_1_hp = $Player1.hit_points
    @player_2_hp = $Player2.hit_points
    erb :play
  end

  get '/attack' do
    @player_1_name = $Player1.name
    @player_2_name = $Player2.name
    $Player1.attack($Player2)
    @player_2_hp = $Player2.hit_points
    erb :attack
  end

  run! if app_file == $0
end