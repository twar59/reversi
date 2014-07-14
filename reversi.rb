class Reversi < Sinatra::Application
  get '/' do
    @name_of_game = "reversi"

    erb :index
  end

  get '/about' do
    erb :about
  end

  get '/game' do
  end
end
