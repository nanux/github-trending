# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'github_trending/version'

Gem::Specification.new do |spec|
  spec.name          = 'github-trending'
  spec.version       = Github::Trending::VERSION
  spec.authors       = ['rochefort', 'sheharyarn']
  spec.email         = ['hello@sheharyar.me']
  spec.summary       = 'Fetches Trending Github Repos'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/sheharyarn/github-trending'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.post_install_message = "\n\n Thanks for Installing!\n\n\n"

  spec.add_dependency 'thor',        '~> 0.19.1'
  spec.add_dependency 'mechanize',   '~> 2.7.2'
  spec.add_dependency 'addressable', '~> 2.3.6'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'rspec',     '~> 3.0.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0.1'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'simplecov', '~> 0.9.0'
  spec.add_development_dependency 'webmock',   '~> 1.18.0'

  spec.add_development_dependency 'coveralls'
end
