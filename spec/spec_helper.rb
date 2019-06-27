require 'fake_twitter'
require 'rspec'
require 'pry'

RSpec.configure do |config|
  config.before(:each) do
    FakeTwitter.stub_twitter
  end

  config.order = 'random'
end
