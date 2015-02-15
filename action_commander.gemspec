# coding: utf-8

require './lib/action_commander/version'

Gem::Specification.new do |spec|
  spec.name          = 'action_commander'
  spec.version       = ActionCommander::VERSION
  spec.authors       = ['Szymon Kopciewski']
  spec.email         = ['s.kopciewski@gmail.com']
  spec.summary       = 'Action template with callbacks support'
  spec.description   = 'Action template with callbacks support'
  spec.homepage      = ''
  spec.license       = 'GPL'

  spec.files         = Dir.glob('{bin,lib}/**/*')
  spec.files        << %w(Gemfile LICENSE README.md CHANGELOG.md)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-given'

end
