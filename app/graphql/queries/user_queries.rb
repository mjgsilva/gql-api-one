module Queries
  module UserQueries
    class All < BaseQuery
      type [Types::UserType], null: false
      description 'Query all Users'

      def resolve
        User.all
      end
    end

    class Get < BaseQuery
      type Types::UserType, null: false
      description 'Query a Player'

      argument :id, ID, required: true

      def resolve(id:)
        User.find(id)
      rescue ActiveRecord::RecordNotFound => e
        GraphQL::ExecutionError.new("User not found: #{e}")
      end
    end
  end
end
