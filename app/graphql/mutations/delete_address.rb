module Mutations
  class DeleteAddress < BaseMutation
    field :address, Types::AddressType, null: true

    argument :id, ID, required: true

    def resolve(id:)
      address = Address.find(id)
      address.destroy
      { address: address }
    end
  end
end
