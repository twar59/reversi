class Reversi < Sinatra::Application
  get '/' do
    @board = Board.new
    erb :index
  end
end
