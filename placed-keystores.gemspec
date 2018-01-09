# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'keystores/version'

Gem::Specification.new do |spec|
  spec.name          = 'placed-keystores'
  spec.version       = Keystores::VERSION
  spec.authors       = ['Jeremy Tryba']
  spec.email         = 'jeremy@placed.com'

  spec.summary       = 'This gem allows applications to interact with java key stores'
  spec.description   = 'This gem allows you to interact with java key stores in pure ruby. Keys and Certificates are' +
                       ' represented as OpenSSL objects'
  spec.homepage      = 'https://github.com/sewichi/keystores'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'javaobs', '~> 0.3.2'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubygems-tasks'
end
