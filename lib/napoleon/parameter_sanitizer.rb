module Napoleon
  class ParameterSanitizer
    include Napoleon::ParameterSanitizers::Helper

    attr_reader :params

    def initialize(params)
      @params = params
    end
  end
end
