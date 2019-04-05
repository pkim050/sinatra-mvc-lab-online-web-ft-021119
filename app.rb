require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/user_input' do
    erb :user_input
  end

  post '/user_input' do
    @pig_latin = PigLatinizer.new(params[:string])
    erb :user_input
  end
end
