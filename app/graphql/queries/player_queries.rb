# frozen_string_literal: true

module Queries
  module PlayerQueries
    class All < BaseQuery
      type [Types::PlayerType], null: false
      description 'Query all Players'

      def resolve
        Player.all
      end
    end

    class Get < BaseQuery
      type Types::PlayerType, null: false
      description 'Query a Player'

      argument :id, ID, required: true

      def resolve(id:)
        Player.find(id)
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new('not found')
      end
    end
  end
end
