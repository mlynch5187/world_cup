require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class PlayerTest < MiniTest::Test

  def setup
    @player = Player.new({name: "Luka Modric", position: "midfielder"})
  end

  def test_players_exist
    assert_instance_of Player, @player
  end

  def test_players_have_names
    assert_equal "Luka Modric", @player.name
  end

  def test_players_have_positions
    assert_equal "midfielder", @player.position
  end
end
