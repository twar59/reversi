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
  end
  
  get '/game/new' do
    game = Game.new(board: Board.new.to_s)
    game.save
    redirect to("/game/#{game.id}")
  end

  get '/game/:id' do
    @page_title = "Reversi Game: #{params[:id]}"

    @game = Game.find(params[:id])
    @board = Board.new(@game.board)
    erb "game/show".to_sym
  end
end
