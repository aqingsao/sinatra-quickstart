require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'dm-core'
require 'dm-core'
require 'dm-validations'
require 'slim'

configure :development do
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, 'sqlite::memory:')
end

configure :production do
  DataMapper.setup(:default, 'mysql://localhost/test')
end

class Todo
  include DataMapper::Resource
  property :id,         Serial
  property :title,      String
  property :created_at, DateTime
  property :complete,   Boolean, :default=>false

  validates_present :title
end

class Application < Sinatra::Base
  set :foo, 'bar'

  get '/' do
    slim :index
  end
  get '/hi' do
    'Hi'
  end
  get '/todos' do
  	@todos=Todo.all :order=>[:created_at]
  	slim :index
  end
end

# class TodoController < Sinatra::Base
# end