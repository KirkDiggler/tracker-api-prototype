ENV['APP_ENV'] = 'test'

require 'tracker-api-prototype'
require 'test/unit'
require 'rack/test'

class DynamicDataController < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_says_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 'Hello Dynamic World', last_response.body
  end

end