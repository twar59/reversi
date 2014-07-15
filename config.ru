require 'rubygems'
require 'bundler'

Bundler.require

require './config/boot'

use Rack::Static, :urls => ['/images', '/stylesheets', '/javascripts'], :root => 'public'

run Reversi
