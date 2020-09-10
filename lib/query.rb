require 'api'

module Query
  Addresses = API::Client.parse("
    {
      addresses{
        id
        street
      }
    }
  ")
end
