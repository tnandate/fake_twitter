# FakeTwitter
This gem is a way to test Twitter API without hitting Twitter's servers.

Inspired by [fake_stripe](https://github.com/thoughtbot/fake_stripe).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fake_twitter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fake_twitter

## Usage
Require the library in your spec support:
```ruby
# spec/spec_helper.rb
require 'fake_twitter'

RSpec.configure do |config|
  config.before(:each) do
    FakeTwitter.stub_twitter
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tnandate/fake_twitter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
