class AddTeamLeadToTeamsUsers < ActiveRecord::Migration
  def change
    add_column :teams_users, :team_lead, :boolean, :default => false
  end
end
