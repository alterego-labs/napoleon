require 'generators/napoleon'

module Napoleon
  module Generators
    class ValidatorGenerator < Base
      def add_validator
        template "validator.rb", File.join('app/validators/', "#{file_name.singularize}_validator.rb")
      end
    end
  end
end
