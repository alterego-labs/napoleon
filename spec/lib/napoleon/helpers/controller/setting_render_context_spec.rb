require 'spec_helper'

class CheckController
  def self.before_action(*args); end
  extend Napoleon::Helpers::Controller::SettingRenderContext
end

describe Napoleon::Helpers::Controller::SettingRenderContext do
  Given(:controller) { CheckController.new }

  context 'defines method for saving context' do
    When { controller.set_current_controller }
    Then { Napoleon::Config.render_context == controller }
  end
end
