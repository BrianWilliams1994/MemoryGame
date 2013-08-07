require File.join(File.dirname(__FILE__), '/lib/game.rb')
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
  @@game.guess(params.keys)
  erb :index
end
