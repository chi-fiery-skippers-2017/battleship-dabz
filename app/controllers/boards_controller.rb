class BoardsController < ApplicationController

  def index
    @board = Board.create
    @board.generate_board
  end

  def show
    @board = Board.find(3)
  end
end
