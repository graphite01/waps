class CreateConfirms < ActiveRecord::Migration[6.0]
  def change
    create_table :confirms do |t|
      t.integer :work_status_id, null: false
      t.string :content
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, null: false, foreign_key: true
      t.references :hope, foreign_key: true
      t.timestamps
    end
  end
end
