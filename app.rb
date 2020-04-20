require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end 
    
    get '/new' do 
      erb :'pirates/new' 
    end 
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ship].each do |details|
        Ship.new(details)
      end 
      
      @ship = Ship.all
      
      erb :show 
    end

  end
end
