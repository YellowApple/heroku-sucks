require 'rubygems'
require 'sinatra/base'
require 'haml'

class HerokuSucksApp < Sinatra::Application
  set :haml, :format => :html5
  
  get '/realzies' do
    send_file 'realzies.png'
  end
  
  get '/yellowapple' do
    haml :fuckyou
  end
  
  get '/:name' do
    haml :index, :locals => { :name => params[:name] }
  end
  
  get '/' do
    haml :index, :locals => { :name => "Heroku" }
  end

  not_found do
    send_file '404.gif', :status => 404
  end
end
