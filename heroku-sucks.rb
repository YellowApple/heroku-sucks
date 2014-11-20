require 'rubygems'
require 'sinatra/base'

class HerokuSucksApp < Sinatra::Application
  get '/realzies' do
    send_file 'realzies.png'
  end
  
  get '/:name' do
    "#{params['name']} sucks."
  end
  
  get '/' do
    "Heroku sucks."
  end

  not_found do
    send_file '404.gif', :status => 404
  end
end
