require 'pry'
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

        def on_send(node)
          if ["require 'pry'", 'require "pry"'].include?(node.loc.expression.source)
            add_offense(node, node.loc)
          end
        end

        def autocorrect(node); end
      end
    end
  end
end
