module ShotHelper

  def enemy
    if current_user.id == 1
      return 2
    else
      return 1
    end
  end

end
