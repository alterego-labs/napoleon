require 'spec_helper'

class SomeCommand < Napoleon::Command
  attr_reader :attrib
end

describe Napoleon::Command do
  Given(:command) { SomeCommand.new(attrib: 'value') }

  context 'when accessing attributes' do
    When(:result) { command.attrib }
    Then { expect(result).to eq('value') }
  end

  context 'when runs default' do
    Then { expect{command.run}.to raise_error }
  end
end
