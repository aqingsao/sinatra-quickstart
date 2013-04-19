# require "#{File.dirname(__FILE__)}/spec_helper"
require File.join(File.dirname(__FILE__), "spec_helper")

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Application
  end

  def test_hi
    get '/hi'
    assert_equal 'Hi', last_response.body
  end
end