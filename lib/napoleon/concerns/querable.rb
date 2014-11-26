require 'active_support/core_ext/string'

module Napoleon
  module Concerns
    # Querable concern for objects
    #
    # ==== Examples
    #
    # # Lets add to User querable ability
    # class User < ActiveRecord::Base
    #   include Napoleon::Concerns::Querable
    #   has_many :messages
    # end
    # # Define querable class:
    # class UserQuery < Napoleon::Query
    #   def unread_messages
    #     messages.unread
    #   end
    # end
    # # And now user instance has #unread_messages method
    module Querable
      extend Napoleon::Concerns::BasicConcern

      build_concern :query
    end
  end
end
