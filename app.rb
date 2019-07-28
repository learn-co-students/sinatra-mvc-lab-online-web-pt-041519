require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end 

    
    post '/piglatinize' do
        @init_text = params[:user_phrase]
        @pig = PigLatinizer.new

        erb :piglatinize
    end 

end