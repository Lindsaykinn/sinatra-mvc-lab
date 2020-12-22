require_relative 'config/environment'
require_relative 'models/piglatinize.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end



  post '/piglatinize' do
    piglat = PigLatinizer.new
    @piglatin = piglat.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
  
end