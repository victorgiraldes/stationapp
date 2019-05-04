require './app'
require 'rack/test'
require 'rspec'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.mock_with :rspec
end
