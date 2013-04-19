require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'dm-core'
require 'slim'

configure :development do
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, 'sqlite::memory:')
end

configure :production do
  DataMapper.setup(:default, (ENV["DATABASE_URL"] || "sqlite3:///#{File.expand_path(File.dirname(__FILE__))}/#{Sinatra::Base.environment}.db"))
  # DataMapper.setup(:default, 'mysql://user:password@hostname/database')

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