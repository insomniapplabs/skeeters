class TeamsController < ApplicationController



	def new
		@team = Team.new
	end

	def create
		@team = Team.create(team_params)
		if @team.save
			redirect_to team
		end
	end

	def show
		@team = Team.find(params[:id])
	end

	private

	def team_params
		params.require(:team).permit(:name)
	end




end
