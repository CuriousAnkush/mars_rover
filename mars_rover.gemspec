# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mars_rover/version'

Gem::Specification.new do |spec|
  spec.name          = "mars_rover"
  spec.version       = MarsRover::VERSION
  spec.authors       = ["Ankush"]
  spec.email         = ["ankush.maheshwari@railsdeveloper.in"]
  spec.summary       = %q{Thoughtworks Mars Rover Problem}
  spec.description   = %q{This gem can be installed and used in solving the mars rover problem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
