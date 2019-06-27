require 'spec_helper'

describe FakeTwitter::StubApp do
  describe 'GET /1.1/account/verify_credentials.json' do
    it 'return an verify_credentials response' do
      uri = URI('https://api.twitter.com/1.1/account/verify_credentials.json')
      response = JSON.parse(Net::HTTP.get(uri))

      expect(response['id']).to eq 7505382
      expect(response['name']).to eq 'Erik Michaels-Ober'
      expect(response['screen_name']).to eq 'sferik'
    end
  end

  describe 'GET /1.1/followers/ids.json' do
    it 'returns an followers_ids response'do
      uri = URI('https://api.twitter.com/1.1/followers/ids.json')
      response = JSON.parse(Net::HTTP.get(uri))

      expect(response['ids']).to eq [20009713, 22469930, 351223419]
      expect(response['previous_cursor']).to eq 0
      expect(response['next_cursor_str']).to eq '1305102810874389703'
      expect(response['previous_cursor_str']).to eq "0"
      expect(response['next_cursor']).to eq 1305102810874389703
    end
  end
end
