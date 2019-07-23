require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @original = params[:user_phrase]
    @piglatin = pl.piglatinize(@original)
    erb :results
  end

end
