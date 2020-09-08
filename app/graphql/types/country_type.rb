module Types
  class CountryType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :capital, String, null: true
    field :territorial_extension, Float, null: true
    field :population, Float, null: true
    field :language, String, null: true
    field :location, String, null: true
    field :coin, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
