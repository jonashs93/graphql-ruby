module Types
  class MutationType < Types::BaseObject
    field :create_address, mutation: Mutations::CreateAddress
    field :update_address, mutation: Mutations::UpdateAddress
    field :delete_address, mutation: Mutations::DeleteAddress
  end
end
