module Types
  class AddressType < Types::BaseObject
    field :id, ID, null: true
    field :street, String, null: true
    field :number, String, null: true
    field :neighborhood, String, null: true
    field :city_id, Integer, null: true
    field :city, CityType, null: false
    field :state_id, Integer, null: true
    field :country_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :errors, [String], null: true
  end
end
