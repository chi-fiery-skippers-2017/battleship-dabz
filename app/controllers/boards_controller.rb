class BoardsController < ApplicationController

  def index
    @board = Board.create
  end

  def show
    @board = Board.create
  end
end
