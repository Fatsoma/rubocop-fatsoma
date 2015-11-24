# encoding: utf-8

require 'rubocop-fatsoma'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.color = true
end

