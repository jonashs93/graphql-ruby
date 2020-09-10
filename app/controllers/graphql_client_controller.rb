require 'query'

class GraphqlClientController < ApplicationController

  def index
    render json: API::Client.query(Query::Addresses)
  end
end
