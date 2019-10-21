require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("Ruby Rhinos", ["Marc","Richard","Yana"], "Coach Carter")
    assert_equal("Ruby Rhinos", sports_team.team_name)
  end

  def test_get_players
    sports_team = SportsTeam.new("Ruby Rhinos", ["Marc","Richard","Yana"], "Coach Carter")
    assert_equal(["Marc","Richard","Yana"], sports_team.players)
  end

  def test_get_coach
    sports_team = SportsTeam.new("Ruby Rhinos", ["Marc","Richard","Yana"], "Coach Carter")
    assert_equal("Coach Carter", sports_team.coach)
  end

  def test_set_coach
    sports_team = SportsTeam.new("Python Pitbulls", ["Juan","Sandy","John"], "Sven Goran Eriksson")
    sports_team.coach = "Coach Carter"
    assert_equal("Coach Carter", sports_team.coach)
  end









end
