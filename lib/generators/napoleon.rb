require 'rails/generators/named_base'

module Napoleon
  module Generators
    class Base < ::Rails::Generators::NamedBase

      def self.source_root
        @_rspec_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'napoleon', generator_name, 'templates'))
      end

    end
  end
end
