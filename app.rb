require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end 
    
    post '/piglatinize' do 
        pigtext = PigLatinizer.new
        pigtext = pigtext.piglatinize(params[:user_phrase])
        pigtext
    end    
end