module Queries
  class Player < Resolvers::Base
    field :retrieve_all,
      resolver: Resolvers::Player::RetrieveAll,
      description: "Items this user might like"
  end
end
