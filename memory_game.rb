require './lib/game.rb'
require 'sinatra'

configure do
  @@game = Game.new
end

helpers do
  def game
    @@game
  end
end

get '/' do
  erb :index
end

post '/guess' do
  erb :index
end
