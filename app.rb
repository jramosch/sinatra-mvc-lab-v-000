require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/piglatinize' do
    @user_phrase = params[:user_phrase]
  end
end