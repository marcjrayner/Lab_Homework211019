require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test
  def test_get_team_name
    sport_team = SportsTeam.new("Ruby Rhinos", ["Marc","Richard","Yana"], "Coach Carter")
    assert_equal("Ruby Rhinos", sport_team.get_team_name)
  end






end
