require 'generators/napoleon'

module Napoleon
  module Generators
    class ModelStackGenerator < Base
      def add_query
        gen_model_layer :query
      end

      def add_service
        gen_model_layer :service
      end

      def add_presenter
        gen_model_layer :presenter
      end

      def add_renderer
        gen_model_layer :renderer
      end

      private

      def gen_model_layer(name)
        generate "napoleon:#{name}", class_name
      end
    end
  end
end

