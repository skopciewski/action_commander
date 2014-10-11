require 'rspec'
require 'rspec/given'

require 'support/faux_callback'
require 'support/attrs'

spec_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join spec_dir, '..', 'lib'
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  config.color = true
end
