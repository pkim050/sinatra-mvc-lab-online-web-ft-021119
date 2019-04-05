require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = params["user_phrase"]
    pig_latinizer = PigLatinizer.new(phrase)
    @pig_latin_word =  pig_latinizer.piglatinize(phrase)
    erb :pig_latin
  end
end
