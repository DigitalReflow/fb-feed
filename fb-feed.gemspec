# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fb/feed/version'

Gem::Specification.new do |spec|
  spec.name          = 'fb-feed'
  spec.version       = Fb::Feed::VERSION
  spec.authors       = ['Matt Witek']
  spec.email         = ['xemall2020@gmail.com']

  spec.summary       = 'Simple gem for retrieving public facebook feeds'
  spec.description   = 'Automatic FB token renewal and facebook public feeds'
  spec.homepage      = 'https://github.com/mwitek/fb-feed'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
