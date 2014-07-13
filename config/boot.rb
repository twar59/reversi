require 'sqlite3'
require 'sinatra'
require "sinatra/activerecord"

require_relative '../reversi'
 
set :database, "sqlite3:reversi.db"

Dir["./models/*.rb"].each {|file| require file }
