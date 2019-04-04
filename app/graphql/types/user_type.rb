# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :name, String, null: false

    field :teacher, Boolean, null: false, resolver_method: :is_teacher
    field :is_teacher, Boolean, null: false, resolver_method: :is_teacher, deprecation_reason: 'Simplified'

    field :courses, [CourseType], null: true

    def is_teacher
      object.teacher?
    end
  end
end
