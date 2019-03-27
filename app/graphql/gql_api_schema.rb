# frozen_string_literal: true

class GqlApiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
