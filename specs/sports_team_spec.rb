require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    sport_team = SportsTeam.new("Ruby Rhinos", ["Marc","Richard","Yana"], "Coach Carter")
    assert_equal("Ruby Rhinos", sport_team.get_team_name)
  end

  def test_get_players
    sport_team = SportsTeam.new("Ruby Rhinos", ["Marc","Richard","Yana"], "Coach Carter")
    assert_equal(["Marc","Richard","Yana"], sport_team.get_players)
  end

  def test_get_coach
    sport_team = SportsTeam.new("Ruby Rhinos", ["Marc","Richard","Yana"], "Coach Carter")
    assert_equal("Coach Carter", sport_team.get_coach)
  end









end
