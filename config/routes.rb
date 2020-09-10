Rails.application.routes.draw do
  post '/graphql', to: 'graphql#execute'

  resources :graphql_client, only: :index

  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
end
