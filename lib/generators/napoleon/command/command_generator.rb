require 'generators/napoleon'

module Napoleon
  module Generators
    class CommandGenerator < Base

      def add_command
        template "command.rb", File.join('app/commands/', "#{file_name.singularize}_command.rb")
      end

    end
  end
end

