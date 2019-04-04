class Course < ApplicationRecord
  has_many :ratings

  has_many :chapters
  has_many :course_users
  has_many :teachers, through: :course_users, source: :user
  has_many :notifications, as: :notifiable, dependent: :destroy, inverse_of: :notifiable

end
