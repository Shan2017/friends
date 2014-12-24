# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "friends/version"

Gem::Specification.new do |spec|
  spec.name          = "friends"
  spec.version       = Friends::VERSION
  spec.authors       = ["Jacob Evelyn"]
  spec.email         = ["jacobevelyn@gmail.com"]
  spec.summary       = %q{Spend time with the people you care about.}
  spec.description   = %q{Spend time with the people you care about. Introvert-tested. Extrovert-approved.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ["friends"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "codeclimate-test-reporter"
end