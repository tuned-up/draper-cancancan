# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'draper/cancan/version'

Gem::Specification.new do |spec|
  spec.name          = "draper-cancan"
  spec.version       = Draper::CanCan::VERSION
  spec.authors       = ["Robert Mathews"]
  spec.email         = ["rob@justsoftwareconsulting.com"]

  spec.summary       = %q{Resolves a breaking change in CanCanCan version 1.13.0 and above when using it with DraperDecorator}
  spec.homepage      = "https://github.com/GoodMeasuresLLC/draper-cancan"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "cancancan",'>=1.13.0'
  spec.add_development_dependency "draper"
end
