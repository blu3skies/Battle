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
    @player_1_hp = $Player1.hp
    @player_2_hp = $Player2.hp
    session[:player_1_hp] = @player_1_hp 
    session[:player_2_hp] = @player_2_hp  
    erb :play
  end

  get '/attack' do
    erb :attack
  end

  run! if app_file == $0
end