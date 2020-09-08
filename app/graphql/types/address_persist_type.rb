module Types
  class AddressPersistType < Types::BaseObject
    field :address, AddressType, null: true
    field :errors, [String], null: true
  end
end
