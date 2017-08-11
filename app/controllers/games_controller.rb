class GamesController < ApplicationController
  def new
    @board = Board.create
  end
end
