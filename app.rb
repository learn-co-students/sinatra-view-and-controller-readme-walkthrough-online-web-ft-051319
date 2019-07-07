require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
   @user = "Ian"
 
   erb :index # @user will be defined as 'Ian' in the view
  end
    
    get '/reverse' do
     erb :reverse
    end

    post '/reverse' do
      puts params 
      original_string = params["string"]
       @reversed_string = original_string.reverse
      # #Instance variables allow us to bypass scope between the various methods in a class.
      erb :reversed
    end

  get '/friends' do
    # Write your code here!
      @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end

