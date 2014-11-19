require 'rubygems'
require 'sinatra'

get '/:name' do
  "#{params['name']} sucks."
end

get '/' do
  "Heroku sucks."
end

not_found do
  "Not found, dummy."
end
