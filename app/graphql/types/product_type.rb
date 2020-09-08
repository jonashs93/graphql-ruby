module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :code, String, null: true
    field :name, String, null: true
    field :price, Float, null: true
    field :expiration_date, GraphQL::Types::ISO8601Date, null: true
    field :quantity, Integer, null: true
    field :supermarket_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
