module RuboCop
  module Cop
    module Fatsoma
      # This cop checks for code that requires pry
      #
      # @example
      #
      #   # bad (ok during development)
      #
      #   require 'pry'
      #   do_something
      #
      # @example
      #
      #   # good
      #
      #   do_something
      #
      class RequirePry < Cop
        MSG = 'Remove require pry when not in development.'.freeze

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
