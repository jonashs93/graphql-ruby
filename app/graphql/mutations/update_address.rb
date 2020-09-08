module Mutations
  class UpdateAddress < BaseMutation
    field :address, Types::AddressType, null: true
    field :errors, [String], null: true

    argument :id, ID, required: true
    argument :street, String, required: true
    argument :city_id, Integer, required: false

    def resolve(id:, street:, city_id: nil)
      address = Address.find(id)
      address.update_attributes(street: street, city_id: city_id)
      { address: address, errors: address.errors.to_a }
    end
  end
end
