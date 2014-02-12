class ProfilesController < ApplicationController


	def create
		@profile = Profile.create(profile_params)
		if @profile.save
			redirect_to roster_path
		else
			redirect_to roster_path
		end
	end

	def edit
		@profile = Profile.find(params[:id])
	end

	def update
		@profile = Profile.find(params[:id])
		if @profile.update(profile_params)
			redirect_to roster_path
		end
	end

	def destroy
		@profile = Profile.find(params[:id])
		@profile.destroy
		redirect_to roster_path
	end

	private

	def profile_params
		params.require(:profile).permit(:player_first_name,
																		:player_last_name,
																		:player_number,
																		:player_favorite_team,
																		:player_favorite_player,
																		:player_favorite_subject,
																		:player_career,
																		:player_favorite_song,
																		:player_favorite_book,
																		:player_favorite_movie,
																		:player_favorite_food,
																		:player_nickname,
																		:image)
	end


end
