class CreateJoinTableCoursesTeachers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :users do |t|
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true
      t.index [:course_id, :user_id]
      t.index [:user_id, :course_id]

      t.timestamps
    end
  end
end
