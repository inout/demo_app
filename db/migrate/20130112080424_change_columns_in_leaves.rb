class ChangeColumnsInLeaves < ActiveRecord::Migration
  def up
    remove_column :leaves, :unpaid_leaves
    rename_column :leaves, :number_of_paid_leaves_taken, :paid_leaves_taken
    rename_column :leaves, :number_of_unpaid_leaves_taken, :unpaid_leaves_taken
    rename_column :leaves, :number_of_leaves_remaining, :leaves_remaining    
  end

  def down
    add_column :leaves, :unpaid_leaves, :float
    rename_column :leaves, :paid_leaves_taken, :number_of_paid_leaves_taken
    rename_column :leaves, :unpaid_leaves_taken, :number_of_unpaid_leaves_taken
    rename_column :leaves, :leaves_remaining, :number_of_leaves_remaining
  end
end
