class Team
  attr_reader :country, :players
  def initialize(country, eliminated = false)
    @country = country
    @eliminated = eliminated
    @players = []
  end

  def eliminated?
    @eliminated
  end

  def eliminated
    @eliminated = true
  end

  def add_player(player)
    @players << player
  end

  def players_by_position(position)
    players.find_all {|player| player.position == (position)}
  end
end
