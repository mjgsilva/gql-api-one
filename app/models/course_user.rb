class CourseUser < ApplicationRecord
  self.table_name = 'courses_users'

  # Associations
  belongs_to :course
  belongs_to :user
end
