require 'player.rb'

describe Player do
  subject(:player){described_class.new("name1")}

  it 'returns the player name' do
    expect(player.name).to eq "name1"
  end

  it 'player health has 60 points to start' do
    expect(player.points).to eq described_class::DEFAULT_HIT_POINTS
  end

  describe '#reduce_points' do
    it 'reduces points by 10' do
      expect{ player.reduce_points }.to change{ player.points }.by -10
    end
  end

  describe '#attack' do
    let(:player2){double(described_class.new("name2"))}

    it 'attacks a certain player and reduces their points' do
      expect(player2).to receive(:reduce_points)
      player.attack(player2)
    end
  end
end
