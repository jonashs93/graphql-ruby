module Types
  class QueryType < Types::BaseObject
    # query definitions

    field :addresses, [AddressType], null: false
    field :address, AddressType, null: true do
      argument :id, ID, required: false
    end

    # query implementations

    def addresses
      Address.all
    end

    def address(id: 2)
      Address.find(id)
    end
  end
end
