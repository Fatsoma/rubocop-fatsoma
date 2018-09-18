module RuboCop
  module Cop
    module Fatsoma
      # Check that `require 'pry'` has not been included in the commit.
      #
      # @example
      #   # bad
      #   require 'pry'
      #
      #   # good
      #
      class RequirePry < Cop
        MSG = %q(Do not commit code which contains "require 'pry'".).freeze

        def_node_matcher :require_pry?, '(send nil :require (str #pry?))'

        def on_send(node)
          return unless require_pry?(node)

          add_offense(node, :expression)
        end

        def pry?(node)
          node == 'pry'
        end

        def autocorrect(node); end
      end
    end
  end
end
