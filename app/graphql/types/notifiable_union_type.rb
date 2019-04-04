# frozen_string_literal: true

module Types
  class NotifiableUnionType < Types::BaseUnion
    possible_types CourseType, ChapterType

    def self.resolve_type(object, context)
      if object.is_a?(Chapter)
        ChapterType
      else
        CourseType
      end
    end
  end
end
