
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "batch/version"

Gem::Specification.new do |spec|
  spec.name          = "batch"
  spec.version       = Batch::VERSION
  spec.authors       = ["Masashi Morita"]
  spec.email         = ["masashi.morita@opentone.co.jp"]
  spec.summary       = "BatchRegistration gem"
  spec.description   = "Useful modules for batch registration"
  spec.homepage      = "https://github.com/masashimorita/batch"
  spec.license       = "MIT"
  spec.required_ruby_version     = '>= 1.9.3'
  spec.required_rubygems_version = '>= 2.4.8'

  gem.files = Dir[ 'lib/**/*.rb' ]
  gem.files += Dir[ 'lib/*.jar' ]
  gem.files += Dir[ '*file' ]
  gem.files += Dir[ '*.gemspec' ]

  spec.platform = 'java'
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'ruby-maven', '~> 3.3', '>= 3.3.8'
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency 'jar-dependencies'
end
