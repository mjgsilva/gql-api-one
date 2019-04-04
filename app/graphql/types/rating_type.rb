# frozen_string_literal: true

module Types
  class RatingType < Types::BaseObject
    field :id, Int, null: false
    field :score, Int, null: false
    field :course, CourseType, null: false
  end
end
