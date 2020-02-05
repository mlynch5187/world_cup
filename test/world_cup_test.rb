require 'minitest/autorun'
require 'minitest/pride'
require './lib/team'
require './lib/player'
require './lib/world_cup'

class WorldCupTest < MiniTest::Test

  def setup
    @france = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @france.add_player(@mbappe)
    @france.add_player(@pogba)
    @croatia = Team.new("Croatia")
    @modric = Player.new({name: "Luka Modric", position: "midfielder"})
    @vida = Player.new({name: "Domagoj Vida", position: "defender"})
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)
    @world_cup = WorldCup.new(2018, [@france, @croatia])
  end


  def test_world_cup_exists
    assert_instance_of WorldCup, @world_cup
  end

  def test_world_cup_has_a_year
    assert_equal 2018, @world_cup.year
  end

  def test_world_cup_has_teams
    assert_equal [@france, @croatia], @world_cup.teams
  end

  def test_active_players_by_position_can_be_retrieved
    assert_equal [@pogba, @modric], @world_cup.active_players_by_position("midfielder")
  end

# pry(main)> world_cup.active_players_by_position("midfielder")
# # => [#<Player:0x00007f936c035eb0...>, #<Player:0x00007f936a3595f8...>]
#
# pry(main)> croatia.eliminated = true
#
# pry(main)> world_cup.active_players_by_position("midfielder")
# # => [#<Player:0x00007f936c035eb0...>]
# ```
end
