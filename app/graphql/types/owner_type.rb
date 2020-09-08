module Types
  class OwnerType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :cpf, String, null: true
    field :birth_date, GraphQL::Types::ISO8601Date, null: true
    field :gender_id, Integer, null: true
    field :address_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
