class CreateHopes < ActiveRecord::Migration[6.0]
  def change
    create_table :hopes do |t|
      t.integer :work_status_id, null: false
      t.string :content
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
