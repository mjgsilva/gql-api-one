# frozen_string_literal: true

module Types
  class NotificationType < Types::BaseObject
    field :action, String, null: false
    field :notifiable, NotifiableUnionType, null: false
  end
end
