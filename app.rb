require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post'/names' do
    $player_one_name = params[:p1_name]
    @player_one_name = $player_one_name
    redirect '/play'
  end

  get '/play' do
    @player_one_name = $player_one_name
    erb(:play)
  end

  post'/move' do
    $move = params[:move]
    @move = $move
    redirect '/result'
  end

  get '/result' do
    @player_one_name = $player_one_name
    @move = $move
    erb(:result)
  end

end
