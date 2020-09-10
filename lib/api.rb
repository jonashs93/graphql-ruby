require 'graphql/client'
require 'graphql/client/http'

module API
  # Configure GraphQL endpoint using the basic HTTP network adapter.
  HTTP = GraphQL::Client::HTTP.new('http://localhost:3000/graphql')

  # Fetch latest schema on init, this will make a network request
  Schema = GraphQL::Client.load_schema(HTTP)

  # However, it's smart to dump this to a JSON file and load from disk
  #
  # Run it from a script or rake task
  GraphQL::Client.dump_schema(HTTP, 'schema.json')

  Client = GraphQL::Client.new(schema: Schema, execute: HTTP)
end
