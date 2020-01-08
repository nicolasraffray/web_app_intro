class Game

  attr_accessor :player1_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1_turn = true
  end

  def attack
    player1_turn ? @player2.reduce_points : @player1.reduce_points
    change_turns
  end


  def player1
    @player1
  end

  def player2
    @player2
  end

  private

  def change_turns
    @player1_turn = !@player1_turn
  end

end