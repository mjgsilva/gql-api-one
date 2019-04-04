# frozen_string_literal: true

module Types
  class ChapterType < Types::BaseObject
    field :name, String, null: false
    field :content, String, null: true
    field :created_at, String, null: false
  end
end
