module Types
  class StateType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :abbreviation, String, null: true
    field :capital, String, null: true
    field :region, String, null: true
    field :country_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
