class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :type
      t.date :startdate
      t.date :enddate
      t.boolean :active

      t.timestamps
    end
  end
end
