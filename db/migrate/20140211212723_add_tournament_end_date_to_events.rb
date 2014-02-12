class AddTournamentEndDateToEvents < ActiveRecord::Migration
  def change
    add_column :events, :tournament_end_date, :date
  end
end
