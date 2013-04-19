require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)
require 'sinatra'
require 'rack/test'

Sinatra::Base.set :environment, :test

require File.join(File.dirname(__FILE__), '../app')
