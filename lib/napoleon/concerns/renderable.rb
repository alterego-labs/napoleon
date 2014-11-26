require 'active_support/core_ext/string'

require 'napoleon/extensions/array_extension'
require 'napoleon/extensions/hash_extension'
require 'napoleon/extensions/collection_proxy_extension'
require 'napoleon/extensions/association_relation_extension'
require 'napoleon/extensions/relation_extension'

module Napoleon
  module Concerns
    # Renderable concern for objects
    #
    # ==== Examples
    #
    # # Lets add to User renderable ability
    # class User
    #   include Napoleon::Concerns::Renderable
    # end
    # # Define renderable class:
    # class UserRenderer < Napoleon::Renderer
    #   render :messages do
    #     render :messages
    #   end
    # end
    # # And now user instance has #render_messages method
    #
    # # Default render methods: if your rendering body is simple
    # # like in example below use render by default feature. For example:
    # = user.render_items
    # # will automatically render :items partial
    #
    # # Partial paths
    # # For self-rendering partial will be search in:
    # # app/views/:resource_name/render/:_partial_name
    # # For custom rendering partial will be search in:
    # # app/views/shared/:resource_name/:_partial_name
    module Renderable
      extend Napoleon::Concerns::BasicConcern

      build_concern :renderer
    end
  end
end