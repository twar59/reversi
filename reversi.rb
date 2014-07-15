class Reversi < Sinatra::Application
  get '/' do
    @page_title = "Reversi"
    erb :index
  end

  get '/about' do
    @page_title = "Reversi About"
    erb :about
  end

  get '/game' do
    @page_title = "Reversi Game"
    erb :game
    # write some html to render a board
    #
  end
end
