require 'game'

describe Game do

  let(:first_player) { double :first_player }
  let(:second_player) { double :second_player }

  subject(:game){described_class.new(first_player, second_player)}

  describe "player1" do
    it 'sets player1 variable with instance of Player class' do
      expect(game.player1).to eq first_player
    end
  end

  describe '#attack' do
    context 'player 1 attacks player 2' do
      it 'player 2 points reduced' do
        expect(second_player).to receive(:reduce_points)
        game.attack
      end
    end

    context 'player 2 attacks player 1' do
      it 'player 1 points reduced' do
        allow(game).to receive(:player1_turn).and_return(false)
        expect(first_player).to receive(:reduce_points)
        game.attack
      end
    end
  end

  describe '#current_turn' do
    context 'Starts as player 1 turn' do
      it 'returns whos turn it is' do
        expect(game.current_turn).to eq first_player
      end
    end

    context 'Its player 2s turn' do
      it 'Returns player2s name' do
        allow(game).to receive(:player1_turn).and_return(false)
        expect(game.current_turn).to eq second_player
      end
    end
  end
end
