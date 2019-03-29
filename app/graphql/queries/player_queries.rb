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
      rescue ActiveRecord::RecordNotFound => e
        GraphQL::ExecutionError.new("Player not found: #{e}")
      end
    end
  end
end
