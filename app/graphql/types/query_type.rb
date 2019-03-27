#module Types
#  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
#    field :players, resolver: Queries::PlayerQueries
#  end
#end

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :players, resolver: Queries::PlayerQueries::All
    field :player, resolver: Queries::PlayerQueries::Get
  end
end
