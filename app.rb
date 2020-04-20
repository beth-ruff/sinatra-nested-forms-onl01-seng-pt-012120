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
      params[:pirate][:ships].each do |details|
        Ship.new(details[:name], details[:type] details[:booty])
      end 
      
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:height], params[:pirate][:weight])
      
      
      @ships = Ship.all
      
      erb :'pirates/show' 
    end

  end
end
