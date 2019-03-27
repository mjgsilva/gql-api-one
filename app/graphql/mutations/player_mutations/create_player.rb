# frozen_string_literal: true

module Mutations
  module PlayerMutations
    class CreatePlayer < Mutations::BaseMutation
      argument :player, InputObjectTypes::PlayerInputObjectType, required: true
      field :player, Types::PlayerType, null: false

      def resolve(player:)
        p = player.to_h

        {
          player: Player.create!(p)
        }
      end
    end
  end
end
