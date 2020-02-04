require 'minitest/autorun'
require 'minitest/pride'
require './lib/team'
require './lib/player'

class TeamTest < MiniTest::Test

  def setup
    @team = Team.new("France")
  end

  def test_teams_exists
    assert_instance_of Team, @team
  end

  def test_teams_have_countries
    assert_equal "France", @team.country

  end

  def test_teams_can_be_eliminated
      assert_equal false, @team.eliminated?
      @team.eliminated
      assert_equal true, @team.eliminated?
  end

  def test_teams_have_players
    assert_equal [], @team.players
  end

  def test_players_can_be_added_to_teams
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @team.add_player(@mbappe)
    @team.add_player(@pogba)
    assert_equal [@mbappe, @pogba], @team.players
  end

  def test_players_can_be_retrieved_by_position
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @team.add_player(@mbappe)
    @team.add_player(@pogba)
    assert_equal [@pogba], @team.players_by_position("midfielder")
    assert_equal [], @team.players_by_position("defender")
  end
end
