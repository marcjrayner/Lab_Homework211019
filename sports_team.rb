class SportsTeam

  attr_accessor :coach, :players, :points
  attr_reader :team_name

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_players
  #   return @players
  # end

  # def get_coach
  #   return @coach
  # end

  # def set_coach(new_coach)
  #   return @coach = new_coach
  # end

def add_player(new_player)
  @players << new_player
end

def player_check(checkname)
  @players.include?(checkname)
end

def points_check()
  return @points
end

def points_adjust(result)
  @points += 3 if result == "win"
  @points += 1 if result == "draw"
  @points += 0 if result == "lose"
end


end
