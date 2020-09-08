module Mutations
  class CreateAddress < BaseMutation
    # define return type
    field :address, Types::AddressType, null: true
    field :errors, [String], null: true

    # define arguments
    argument :street, String, required: true
    argument :city_id, Integer, required: false
    argument :number, String, required: false

    # define resolve method
    def resolve(street:, city_id: nil, number: nil)
      address = Address.new(street: street, city_id: city_id, number: number)
      address.save
      { address: address, errors: address.errors.to_a }
    end
  end
end
