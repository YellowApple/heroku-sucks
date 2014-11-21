require 'rubygems'
require 'sinatra/base'
require 'haml'

class HerokuSucksApp < Sinatra::Application
  set :haml, :format => :html5
  
  cool_things = [
    '/yellowapple',
    '/YellowApple',
    '/cider',
    '/Cider',
  ]
    
  get '/realzies' do
    send_file 'realzies.png'
  end
  
  cool_things.each do |cool_thing|
    get cool_thing do
      haml :xedni, :locals => { :name => cool_thing }
    end
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
