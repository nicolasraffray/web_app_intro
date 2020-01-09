class Game
  attr_reader :players, :player1, :player2

  def initialize(player1, player2)
    @players = [player1, player2]
    @player1 = player1
    @player2 = player2
  end

  def attack(index = 1)
    @players[index].reduce_points
  end

  def attacker
    @players[0]
  end

  def opponent
    @players[1]
  end

  def change_turns
    @players[0], @players[1] = @players[1], @players[0]
  end

  def game_over?
    @players[1].points == 0 ? true : false
  end

end
