class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  enum role: [:customer, :teacher, :admin]
  has_many :course_users
  has_many :courses, through: :course_users
end
