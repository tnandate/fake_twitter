require 'spec_helper'

describe FakeTwitter::StubApp do
  describe 'GET /1.1/account/verify_credentials.json' do
    it do
      uri = URI('https://api.twitter.com/1.1/account/verify_credentials.json')
      response = JSON.parse(Net::HTTP.get(uri))

      expect(response).not_to  eq raise_error
    end
  end

  describe 'GET /1.1/followers/ids.json' do
    it do
      uri = URI('https://api.twitter.com/1.1/followers/ids.json')
      response = JSON.parse(Net::HTTP.get(uri))

      expect(response).not_to  eq raise_error
    end
  end

  describe 'GET /1.1/friends/ids.json' do
    it do
      uri = URI('https://api.twitter.com/1.1/friends/ids.json')
      response = JSON.parse(Net::HTTP.get(uri))

      expect(response).not_to  eq raise_error
    end
  end
end
