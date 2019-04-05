require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatin' do
    @pig_latin = PigLatinizer.new(params[:string])
    erb :user_input
  end
end
