class FromComplexToSimple < ActiveRecord::Migration
  def change
    remove_column :tasks, :type, :string
    remove_column :events, :type, :string
  end
end
