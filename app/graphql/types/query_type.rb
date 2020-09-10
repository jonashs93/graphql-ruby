module Types
  class QueryType < Types::BaseObject
    # query definitions

    field :addresses, [AddressType], null: false
    field :address, AddressType, null: true do
      argument :id, ID, required: false
    end

    field :states, [StateType], null: false
    field :state, StateType, null: true do
      argument :id, ID, required: true
    end

    # query implementations

    def addresses
      Address.all
    end

    def address(id: 2)
      Address.find(id)
    end

    def states
      State.all
    end

    def state(id:)
      State.find(id)
    end
  end
end
