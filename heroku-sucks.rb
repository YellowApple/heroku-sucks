require 'rubygems'
require 'sinatra'

get '/' do
  "Heroku sucks."
end

not_found do
  "Not found, dummy."
end
