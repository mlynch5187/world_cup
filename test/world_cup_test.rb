require 'minitest/autorun'
require 'minitest/pride'
require './lib/team'
require './lib/player'
require './lib/world_cup'

class WorldCupTest < MiniTest::Test

  def setup
    @france = Team.new("France")
  end

end




# pry(main)> france = Team.new("France")
# # => #<Team:0x00007f936a313698...>
#
# pry(main)> mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
# # => #<Player:0x00007f936a9168b0...>
#
# pry(main)> pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
# # => #<Player:0x00007f936c035eb0...>
#
# pry(main)> france.add_player(mbappe)
#
# pry(main)> france.add_player(pogba)
#
# pry(main)> croatia = Team.new("Croatia")
# # => #<Team:0x00007f936a3afea8...>
#
# pry(main)> modric = Player.new({name: "Luka Modric", position: "midfielder"})
# # => #<Player:0x00007f936a3595f8...>
#
# pry(main)> vida = Player.new({name: "Domagoj Vida", position: "defender"})
# # => #<Player:0x00007f936a318f08...>
#
# pry(main)> croatia.add_player(modric)
#
# pry(main)> croatia.add_player(vida)
#
# pry(main)> world_cup = WorldCup.new(2018, [france, croatia])
# # => #<WorldCup:0x00007f936a010d10...>
#
# pry(main)> world_cup.year
# # => 2018
#
# pry(main)> world_cup.teams
# # => [#<Team:0x00007f936a313698...>, #<Team:0x00007f936a3afea8...>]
#
# pry(main)> world_cup.active_players_by_position("midfielder")
# # => [#<Player:0x00007f936c035eb0...>, #<Player:0x00007f936a3595f8...>]
#
# pry(main)> croatia.eliminated = true
#
# pry(main)> world_cup.active_players_by_position("midfielder")
# # => [#<Player:0x00007f936c035eb0...>]
# ```
