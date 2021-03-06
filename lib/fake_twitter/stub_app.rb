require 'sinatra/base'

module FakeTwitter
  class StubApp < Sinatra::Base
    get '/1.1/account/verify_credentials.json' do
      json_response 200, fixture('verify_credentials')
    end

    get '/1.1/followers/ids.json' do
      json_response 200, fixture('follower_and_friend_ids')
    end

    get '/1.1/friends/ids.json' do
      json_response 200, fixture('follower_and_friend_ids')
    end

    get '/1.1/followers/list.json' do
      json_response 200, fixture('followers_list')
    end

    get '/1.1/friends/list.json' do
      json_response 200, fixture('friends_list')
    end

    private

    def fixture(file_name)
      file_path = File.join(FakeTwitter.fixture_path, "#{file_name}.json")
      File.open(file_path, 'rb').read
    end

    def json_response(response_code, response_body)
      content_type :json
      status response_code
      response_body
    end
  end
end
