require 'game'

describe Game do

  let(:first_player) { double :first_player }
  let(:second_player) { double :second_player }

  subject(:game){described_class.new(first_player, second_player)}

  describe '#change_turns' do
    it 'swaps elements of the players array' do
      expect(game.change_turns).to eq [second_player, first_player]
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
        game.change_turns
        expect(first_player).to receive(:reduce_points)
        game.attack
      end
    end
  end

  describe '#attacker' do
    context 'Attacker starts as player 1' do
      it 'returns whos turn it is' do
         expect(game.attacker).to eq first_player
      end

      context 'Changing turns' do
        it 'expects player2' do
          game.change_turns
          expect(game.attacker).to eq second_player
        end
      end
    end
  end

  describe '#opponent' do
    context 'opponent starts as player 2' do
      it 'returns whos turn it is' do
         expect(game.opponent).to eq second_player
      end

      context 'Changing turns' do
        it 'expects player1' do
          game.change_turns
          expect(game.opponent).to eq first_player
        end
      end
    end
  end

  describe '#game_over?' do
    let(:second_player) { double :second_player, points: 0 }
    it 'returns true when opponent health points are 0' do
      expect(game.game_over?).to be true
    end
  end
end
