require 'napoleon/version'

module Napoleon

  autoload :Decorator,          'napoleon/decorator'
  autoload :Renderer,           'napoleon/renderer'
  autoload :Service,            'napoleon/service'
  autoload :Query,              'napoleon/query'
  autoload :UseCase,            'napoleon/use_case'
  autoload :ParameterSanitizer, 'napoleon/parameter_sanitizer'
  autoload :Validator,          'napoleon/validator'
  autoload :Command,            'napoleon/command'
  autoload :Config,             'napoleon/config'

  module Concerns
    autoload :BasicConcern, 'napoleon/concerns/basic_concern'
    autoload :Servicable,   'napoleon/concerns/servicable'
    autoload :Decorable,    'napoleon/concerns/decorable'
    autoload :Querable,     'napoleon/concerns/querable'
  end

  module ParameterSanitizers
    autoload :Helper,            'napoleon/parameter_sanitizers/helper'
  end

  module Extensions
    autoload :CollectionRenderable, 'napoleon/extensions/collection_renderable'
  end

  module Helpers
    autoload :BaseCommand,       'napoleon/helpers/base_command'
    autoload :ModelConcern,      'napoleon/helpers/model_concern'
    autoload :Renderer,          'napoleon/helpers/renderer'
    autoload :RenderParameters,  'napoleon/helpers/render_parameters'
    autoload :MethodDispatcher,  'napoleon/helpers/method_dispatcher'

    module Controller
      autoload :SettingRenderContext, 'napoleon/helpers/controller/setting_render_context'
      autoload :ParamsConventions, 'napoleon/helpers/controller/params_conventions'
    end

    module Validator
      autoload :AssociationValidation, 'napoleon/helpers/validator/association_validation'
      autoload :ErrorMessageConstructor, 'napoleon/helpers/validator/error_message_constructor'

      module Associations
        autoload :BaseAssociation, 'napoleon/helpers/validator/associations/base_association'
        autoload :Builder, 'napoleon/helpers/validator/associations/builder'
        autoload :PluralAssociation, 'napoleon/helpers/validator/associations/plural_association'
        autoload :SingularAssociation, 'napoleon/helpers/validator/associations/singular_association'
      end
    end
  end
end
