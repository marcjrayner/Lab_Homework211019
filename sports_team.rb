class SportsTeam

  attr_accessor :coach, :players
  attr_reader :team_name

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
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







end
