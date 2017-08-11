module GameHelper

  def current_game
    if !Game.last.winner?
      Game.last
    else
    	nil
    end
  end

  def game_in_session?
  	if Game.all.empty?
  		return false
  	elsif !Game.last.winner? 
  		return true
  	else
  		return false
	end
  end

end