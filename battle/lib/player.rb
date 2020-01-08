
class Player
  DEFAULT_HIT_POINTS = 60

  attr_reader :name
  attr_accessor :points

  def initialize(name, points = DEFAULT_HIT_POINTS)
    @name = name
    @points = points
  end

  def reduce_points
    @points -= 10
  end

  def attack(player_name)
    player_name.reduce_points
  end
end
