module Types
  class SupermarketType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :cnpj, String, null: true
    field :owner_id, Integer, null: true
    field :address_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
