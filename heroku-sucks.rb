require 'rubygems'
require 'sinatra/base'

class HerokuSucksApp < Sinatra::Application
  set :haml, :format => :html5
  
  get '/realzies' do
    send_file 'realzies.png'
  end
  
  get '/:name' do
    haml <<END
%html
  %head
    %title #{params[:name]} sucks.
  %body
    %h1 #{params[:name]} sucks.
END
  end
  
  get '/' do
    "Heroku sucks."
  end

  not_found do
    send_file '404.gif', :status => 404
  end
end
