# encoding: utf-8

require 'spec_helper'

describe RuboCop::Cop::Fatsoma::RequirePry do
  subject(:cop) { described_class.new }

  it %q{registers an offense for "require 'pry'"} do
    inspect_source(cop, %q{require 'pry'})

    expect(cop.offenses.size).to eq(1)
    expect(cop.messages)
      .to eq([%q{Do not commit code which contains "require 'pry'".}])
  end

  it %q{registers an offense for 'require "pry"} do
    inspect_source(cop, %q{require "pry"})

    expect(cop.offenses.size).to eq(1)
    expect(cop.messages)
      .to eq([%q{Do not commit code which contains "require 'pry'".}])
  end
end
