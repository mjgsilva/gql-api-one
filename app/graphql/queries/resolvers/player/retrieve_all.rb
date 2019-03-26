module Resolvers
  class RetrieveAll < Resolvers::Base
    type [Types::Player], null: false

    #argument :order_by, Types::ItemOrder, required: false
    #argument :category, Types::ItemCategory, required: false

    def resolve
      Player.all
    end
  end
end
