# frozen_string_literal: true
begin
  require "./lib/action_commander/version"
rescue LoadError
  module ActionCommander; VERSION = "0"; end
end

Gem::Specification.new do |spec|
  spec.name          = "action_commander"
  spec.version       = ActionCommander::VERSION
  spec.authors       = ["Szymon Kopciewski"]
  spec.email         = "s.kopciewski@gmail.com"
  spec.summary       = "The action template with the callbacks support"
  spec.description   = "The action template with the callbacks support"
  spec.homepage      = "https://github.com/skopciewski/action_commander"
  spec.license       = "GPL-3.0"

  spec.require_paths = ["lib"]
  spec.files         = Dir.glob("{bin,lib}/**/*") + \
                       %w(Gemfile LICENSE README.md CHANGELOG.md)

  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-given"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "codeclimate-test-reporter"
end
