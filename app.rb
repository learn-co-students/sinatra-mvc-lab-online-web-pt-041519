require_relative 'config/environment'
require_relative "models/piglatinizer.rb"

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @phrase = params[:user_phrase]
        @object = PigLatinizer.new
        @pigged = @object.piglatinize(@phrase)
        erb :pig_latin
    end

end