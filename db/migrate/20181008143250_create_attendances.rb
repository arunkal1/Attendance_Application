class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.date :date
      t.integer :att_status
      t.string :comment
      t.integer :student_id

      t.timestamps
    end
  end
end
