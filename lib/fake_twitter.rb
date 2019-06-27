require 'fake_twitter/version'
require 'fake_twitter/initializers/webmock'
require 'fake_twitter/stub_app'

module FakeTwitter
  def self.stub_twitter
    stub_request(:any, 'https://api.twitter.com').to_rack(FakeTwitter::StubApp)
  end
end
