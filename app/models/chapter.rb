class Chapter < ApplicationRecord
  has_many :notifications, as: :notifiable, dependent: :destroy, inverse_of: :notifiable
end
