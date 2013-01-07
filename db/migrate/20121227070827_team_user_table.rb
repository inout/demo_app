class TeamUserTable < ActiveRecord::Migration
  def up
    create_table :teams_users, :id => false do |t|
      t.references :user
      t.references :team
    end
    
    add_index :teams_users, :user_id
    add_index :teams_users, :team_id
  end

  def down
    remove_index :teams_users, :user_id
    remove_index :teams_users, :team_id
    drop_table :teams_users
  end
end
