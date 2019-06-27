require 'fake_twitter/version'
require 'fake_twitter/initializers/webmock'
require 'fake_twitter/stub_app'
require 'fake_twitter/configuration'

module FakeTwitter
  extend Configuration
  def self.stub_twitter
    stub_request(:any, /api.twitter.com/).to_rack(FakeTwitter::StubApp)
  end
end
