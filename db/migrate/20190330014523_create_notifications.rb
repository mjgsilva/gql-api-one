class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :action
      t.integer :notifiable_id
      t.string :notifiable_type
      t.timestamps
    end
  end
end
