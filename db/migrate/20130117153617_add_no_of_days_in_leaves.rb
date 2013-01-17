class AddNoOfDaysInLeaves < ActiveRecord::Migration
  def up
    add_column :leaves, :no_of_days, :integer
  end

  def down
    remove_column :leaves, :no_of_days
  end
end
