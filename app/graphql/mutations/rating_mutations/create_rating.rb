# frozen_string_literal: true

module Mutations
  module RatingMutations
    class CreateRating < Mutations::BaseMutation
      argument :rating, InputObjectTypes::RatingInputObjectType, required: true
      field :rating, Types::RatingType, null: false

      def resolve(rating:)
        r = rating.to_h

        {
          rating: Rating.create!(r)
        }
      end
    end
  end
end
