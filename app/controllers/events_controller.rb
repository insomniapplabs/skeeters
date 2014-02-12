class EventsController < ApplicationController

	def create
		@event = Event.create(event_params)
		if @event.save
			redirect_to calendar_path
		else
			redirect_to calendar_path
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to(:back)
	end

	private

	def event_params
		params.require(:event).permit(:date, :start_time, :arrival, :opponent, :home_away, :game_type, :location, :notes, :event_type, :user_id, :team_id, :tournament_start_date, :tournament_end_date, :tournament_name)
	end

end
