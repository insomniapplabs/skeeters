class AddTournamentNameToEvents < ActiveRecord::Migration
  def change
    add_column :events, :tournament_name, :string
  end
end
