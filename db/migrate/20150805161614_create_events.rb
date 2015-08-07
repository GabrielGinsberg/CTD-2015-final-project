class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.date :date
      t.string :location
      t.integer :user_id
      t.string :type_string

      t.timestamps
    end
  end
end
