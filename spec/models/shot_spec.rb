require 'rails_helper'

describe Shot do
  let(:player) { User.create(email: "dom@dom.com", password: "password") }
  let(:game) { Game.create(creator: player) }
  let(:board) { Board.new(player: player, game: game) }
  let(:shot) { Shot.create(coordinate: "a4", board_id: board.id)}
  
  describe "new-shot" do
    context "when the shot is being taken" do

      it "has a readable attribute of coordinate" do
        expect(shot.coordinate).to eq "a4"
      end

      it "shots with the same coordinate are invalid" do
        similar_shot = Shot.new(coordinate: "a4", board_id: board.id)
        expect(similar_shot.valid?).to be false
      end

    end
  end
end