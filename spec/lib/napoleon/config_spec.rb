require 'spec_helper'

describe Napoleon::Config do
  Given(:config) { described_class }

  context 'write/read render context' do
    Given(:context) { double(:render_context) }
    When { config.render_context = context }
    Then { config.render_context == context }
  end
end
