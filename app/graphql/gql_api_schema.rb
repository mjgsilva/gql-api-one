# frozen_string_literal: true

class GqlApiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  use GraphQL::Batch
  enable_preloading
end

GraphQL::Errors.configure(GqlApiSchema) do
  rescue_from ActiveRecord::RecordNotFound do |e|
    GraphQL::ExecutionError.new(e.message)
  end

  rescue_from ActiveRecord::RecordInvalid do |e|
    GraphQL::ExecutionError.new(e.record.errors.full_messages.join("\n"))
  end

  rescue_from StandardError do |e|
    puts e
    GraphQL::ExecutionError.new('Please try to execute the query for this field later')
  end
end
