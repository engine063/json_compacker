# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json_compacker/version'

Gem::Specification.new do |spec|
  spec.name          = "json_compacker"
  spec.version       = JsonCompacker::VERSION
  spec.authors       = ["jtianling"]
  spec.email         = ["jtianling@gmail.com"]

  spec.summary       = %q{compack multiple json files into one}
  spec.description   = %q{compack multiple json files into one, for the loading speed}
  spec.homepage      = 'https://github.com/jtianling/json_compacker'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = ['json_compacker']
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
