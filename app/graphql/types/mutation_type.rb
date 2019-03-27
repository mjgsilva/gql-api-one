# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :add_player, mutation: Mutations::PlayerMutations::CreatePlayer
  end
end
