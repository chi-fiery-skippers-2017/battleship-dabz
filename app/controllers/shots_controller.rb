class ShotsController < ApplicationController
include ShotHelper

	def new
		@shot = Shot.new
	end

	def create
    p "*"*50
    p current_user
    p "*"*50
		@board = Board.find_by(player_id: enemy)
		@shot = @board.shots.create(params[:shot].permit(:coordinate))
    redirect_to game_path(@board.game.id)
	end

end
