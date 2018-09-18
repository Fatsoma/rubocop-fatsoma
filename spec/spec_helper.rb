require 'rubocop-fatsoma'
require 'rubocop/rspec/support'

RSpec.configure do |config|
  config.color = true

  config.include RuboCop::RSpec::ExpectOffense
end
