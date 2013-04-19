require 'rubygems'
require 'bundler/setup'

require 'sinatra'

get '/' do
  slim :index
end
