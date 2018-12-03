module RootCops
  class PreferKeywordArgs < ::RuboCop::Cop::Cop
    ALLOWED_ARG_TYPES = %i[kwoptarg kwarg blockarg].freeze
    MSG = "Use keyword args for public methods with more than 2 arguments".freeze

    def on_def(node)
      arguments = node.arguments&.children

      return unless arguments && arguments.length > 2
      return if node.method_name.to_s.start_with?("_")
      return if arguments.all? { |a| ALLOWED_ARG_TYPES.include?(a.type) }

      add_offense(node, :location => :expression, :message => MSG)
    end
  end
end
