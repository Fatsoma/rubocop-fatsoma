# encoding: utf-8

require 'spec_helper'

describe RuboCop::Cop::Fatsoma::RequirePry do
  let(:config) { RuboCop::Config.new }
  subject(:cop) { described_class.new(config) }

  it %q(registers an offense for "require 'pry'") do
    expect_offense(<<-RUBY.strip_indent)
      require 'pry'
      ^^^^^^^^^^^^^ Do not commit code which contains "require 'pry'".
    RUBY
  end

  it %q(registers an offense for 'require "pry"') do
    expect_offense(<<-RUBY.strip_indent)
      require "pry"
      ^^^^^^^^^^^^^ Do not commit code which contains "require 'pry'".
    RUBY
  end

  it %q(does not register an offense for 'require "prime"') do
    expect_no_offenses(<<-RUBY.strip_indent)
      require 'prime'
      require "prime"
    RUBY
  end
end
