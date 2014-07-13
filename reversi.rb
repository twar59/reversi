class Reversi < Sinatra::Application
  get '/' do
    board = Board.new
    board.to_s
  end
end
