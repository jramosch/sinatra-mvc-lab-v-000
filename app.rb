require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/piglatinize' do
    @piglatinize = PigLatinizer.new
    erb :user_input
  end
end