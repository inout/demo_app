class AlterColumnsInUsers < ActiveRecord::Migration
  def up
    remove_column :users, :phone
    rename_column :users, :mobile, :contact_no
  end

  def down
    add_column :users, :phone, :string
    rename_column :users, :contact_no, :mobile
  end
end
