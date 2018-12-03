module RootCops
  class UseLonelyOperator < ::RuboCop::Cop::Cop
    MSG = "Use the lonely operator foo&.bar instead of foo.try(:bar)".freeze

    def on_send(node)
      _receiver, method_name = *node
      if method_name == :try || method_name == :try!
        add_offense(node, :location => :expression, :message => MSG)
      end
    end
  end
end
