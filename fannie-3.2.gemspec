# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fannie/version'

Gem::Specification.new do |spec|
  spec.name          = "fannie-3.2"
  spec.version       = Fannie32::VERSION
  spec.authors       = ["Baylor Rae'"]
  spec.email         = ["baylor@fastmail.com"]

  spec.summary       = %q{parses FANNIE MAE 3.2 files}
  spec.description   = %q{parses FANNIE MAE 3.2 files}
  spec.homepage      = "https://github.com/baylorrae/fannie-3.2"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "cucumber", "~> 2.4"
  spec.add_development_dependency 'rubyXL', '~> 3.3'
  spec.add_development_dependency 'activesupport', '~> 5.0'
end
