
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fake_twitter/version"

Gem::Specification.new do |spec|
  spec.name          = "fake_twitter"
  spec.version       = FakeTwitter::VERSION
  spec.authors       = ["tnandate"]
  spec.email         = ["nan9029.d@gmail.com"]

  spec.summary       = %q{A mocking library for testing twitter ruby.}
  spec.description   = %q{This library is a way to test twitter code without hitting twitter's servers.}
  spec.homepage      = "https://github.com/tnandate"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "webmock"
  spec.add_dependency "sinatra"
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
