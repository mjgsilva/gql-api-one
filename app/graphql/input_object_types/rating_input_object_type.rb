# frozen_string_literal: true

module InputObjectTypes
  class RatingInputObjectType < Types::BaseInputObject
    argument :score, Integer, required: true
    argument :course_id, ID, required: true
  end
end
