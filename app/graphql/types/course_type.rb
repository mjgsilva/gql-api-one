# frozen_string_literal: true

module Types
  class CourseType < Types::BaseObject
    field :name, String, null: false
    field :created_at, String, null: false
    field :chapters, [ChapterType], null: true

    field :teachers, [UserType], null: true

    field :ratings, [RatingType], null: true

    field :rating, Float, null: false, resolver_method: :rating_avg

    def rating_avg
      object.ratings.average(:score)
    end
  end
end
