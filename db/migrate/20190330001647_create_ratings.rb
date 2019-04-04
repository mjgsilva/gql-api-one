class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :score
      t.belongs_to :course, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
