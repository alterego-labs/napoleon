require 'delegate'

module Napoleon
  class Decorator < SimpleDelegator
    include Napoleon::Helpers::ModelConcern
    def self.draw(name, *_args, &block)
      define_method "draw_#{name}" do |*args|
        instance_exec *args, &block
      end
    end
  end
end
