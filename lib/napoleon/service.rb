require 'delegate'

module Napoleon
  class Service < SimpleDelegator
    include Napoleon::Helpers::ModelConcern

  end
end
