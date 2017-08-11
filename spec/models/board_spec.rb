require 'rails_helper'

describe Board do
  let(:player) { User.create(email: "dom@dom.com", password: "password") }
  let(:game) { Game.create(creator: player) }
  let(:board) { Board.new(player: player, game: game) }

  describe "new-board" do
    context "when the board is being made" do

      it "before the board is saved, it does not have a grid" do
        expect(board.grid).to be nil
      end

      it "after the board is saved, it does have a grid" do
        board.save
        expect(board.grid).to be_a Hash
      end

      it "the length of the board is 100" do
        board.save
        expect(board.grid.length).to be 100
      end
    end
  end
end
