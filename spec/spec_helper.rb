if ENV['CI']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

require 'pry'

require 'rspec'
require 'hashie'

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.expect_with :rspec do |expect|
    expect.syntax = :expect
  end
end
