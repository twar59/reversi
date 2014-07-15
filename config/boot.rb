require 'sqlite3'
require 'sinatra'
require "sinatra/activerecord"

# -- configure sinatra settings
set :static, true
set :root, File.expand_path(File.dirname(__FILE__) + '/../')
set :database, "sqlite3:reversi.db"

# -- require files
require  settings.root + '/reversi'
require  settings.root + '/tasks'

# -- models
Dir[settings.root + "/models/*.rb"].each {|file| require file }
