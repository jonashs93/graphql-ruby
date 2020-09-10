module Mutations
  class CreateAddress < BaseMutation
    # define return type
    field :address, Types::AddressType, null: true
    field :errors, [String], null: true

    # define arguments
    argument :street, String, required: true
    argument :number, String, required: true
    argument :neighborhood, String, required: false
    argument :city_id, Integer, required: false
    argument :state_id, Integer, required: false
    argument :country_id, Integer, required: false

    # define resolve method
    def resolve(street:, number: nil, neighborhood: nil, city_id: nil, state_id: nil, country_id: nil)
      address = Address.new(street: street, number: number, neighborhood: neighborhood,
                            city_id: city_id, state_id: state_id, country_id: country_id)
      address.save
      { address: address, errors: address.errors.to_a }
    end
  end
end
