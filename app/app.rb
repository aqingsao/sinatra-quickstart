require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require 'slim'

class Application < Sinatra::Base
  set :foo, 'bar'

  get '/' do
    slim :index
  end
  get '/hi' do
    'Hi'
  end
end
