require File.expand_path '../test_helper.rb', __FILE__

include Rack::Test::Methods

def app
  Reversi
end

describe "my example app" do
  it "should successfully return a reversi board" do
    get '/'
    last_response.body.must_include 'reversi board!'
  end
end
