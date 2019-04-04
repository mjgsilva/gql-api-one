# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :add_rating, mutation: Mutations::RatingMutations::CreateRating
  end
end
