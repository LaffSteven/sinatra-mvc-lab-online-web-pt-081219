require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_phrase = params[:user_phrase.downcase]
    word = PigLatinizer.new
    @latinized_word = word.piglatinize(user_phrase)
    erb :piglatinize
  end
end