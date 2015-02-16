# coding: utf-8

require './lib/action_commander/version'

Gem::Specification.new do |spec|
  spec.name          = 'action_commander'
  spec.version       = ActionCommander::VERSION
  spec.authors       = ['Szymon Kopciewski']
  spec.email         = 's.kopciewski@gmail.com'
  spec.summary       = 'The action template with the callbacks support'
  spec.description   = 'The action template with the callbacks support'
  spec.homepage      = 'https://github.com/skopciewski/action_commander'
  spec.license       = 'GPL-3.0'

  spec.files         = Dir.glob('{bin,lib}/**/*') + \
                       %w(Gemfile LICENSE README.md CHANGELOG.md)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-given'

end
