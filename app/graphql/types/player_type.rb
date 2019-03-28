# frozen_string_literal: true

module Types
  class PlayerType < Types::BaseObject
    field :id, Int, null: false
    field :name, String, null: true
  end
end
