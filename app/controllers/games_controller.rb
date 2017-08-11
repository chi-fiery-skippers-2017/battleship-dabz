class GamesController < ApplicationController
	include ShipHelper
  include BoardHelper

  def new
  	@opponent = User.find(2)
  	@game = Game.create(creator: current_user)
    @board1 = Board.create(player: current_user, game: @game)
    @board2 = Board.create(player: @opponent, game: @game)
    @ships1 = generate_ships(@board1)
    @ships2 = generate_ships(@board2)

    # we need before_action authenticate to disallow a
    # user who isn't signed in from accessing this URL
    @game = Game.new(creator: current_user)
    if @game.save
      render 'new'
    else
      redirect_to "/"
    end
  end

  def show
    @game = Game.find_by(id: params[:id])
    @player1_board = Board.where(game_id: @game.id, player_id: 1)[0]
    @player2_board = Board.where(game_id: @game.id, player_id: 2)[0]
    @shot = Shot.new
  end


	def create
    @board = Board.find_by(id: params[:board][:board_id]) 
    @board.ships.each do |ship|
      info = update_ship_on_board(params[:board][:ships], ship.id, @board)
      ship.start_point = info[:start_point]
      ship.orientation = info[:orientation]
      ship.save
    end
    redirect_to game_path(@board.game.id)
	end

end



