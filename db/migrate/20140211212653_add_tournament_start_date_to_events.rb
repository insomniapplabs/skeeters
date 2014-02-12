class AddTournamentStartDateToEvents < ActiveRecord::Migration
  def change
    add_column :events, :tournament_start_date, :date
  end
end
