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
    "Not found, dummy."
  end
end
