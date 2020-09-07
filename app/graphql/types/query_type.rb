module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_orders, [Types::OrderType], null: false

    def all_orders
      Order.all
    end
  end
end
