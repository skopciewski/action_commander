# coding: utf-8
#lib = File.expand_path('../lib', __FILE__)
#$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require './lib/action_commander/version'

Gem::Specification.new do |spec|
  spec.name          = "action_commander"
  spec.version       = ActionCommander::VERSION
  spec.authors       = ["szymon"]
  spec.email         = ["s.kopciewski@gmail.com"]
  spec.summary       = %q{Action template with callbacks support}
  spec.description   = %q{Action template with callbacks support}
  spec.homepage      = ""
  spec.license       = "Free"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-given"

end
