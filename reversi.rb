require 'sinatra/base'

class Reversi < Sinatra::Application
  get '/' do
    'Hello world!'
  end
end
