class BoardsController < ApplicationController

  def index
    p "************************"
    @board = Board.create
  end

  def show
    @board = Board.create
  end
end
