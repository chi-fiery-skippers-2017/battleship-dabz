class ShotsController < ApplicationController

	def new
		@shot = Shot.new
	end

	def create
		@board = Board.find(params[:board_id])
		@shot = @Board.shots.create(params[:shot].permit(:coordinate))		
	end

end