class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.date :date
      t.string :location

      t.timestamps
    end
  end
end
