require 'delegate'

module Napoleon
  class Query < SimpleDelegator
    include Napoleon::Helpers::ModelConcern

    def self.method_missing(meth, *args, &_blk)
      new(default_base).send meth, *args
    end
  end
end
