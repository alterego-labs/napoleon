module Napoleon
  class Railtie < Rails::Railtie
    config.after_initialize do
      ActiveSupport.on_load(:action_controller) do
        extend Napoleon::Helpers::Controller::SettingRenderContext
        include Napoleon::Helpers::Controller::ParamsConventions
      end
    end
  end
end
