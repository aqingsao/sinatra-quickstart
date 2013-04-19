require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)
require 'sinatra'
require 'rack/test'
require 'test/unit'

Sinatra::Base.set :environment, :test

require File.join(File.dirname(__FILE__), '../app/app')
