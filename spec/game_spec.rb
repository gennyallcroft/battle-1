require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) { double :player, hit_points: 60, reduce_hit_points: nil}

  describe '#attack' do
    it 'reduces hit points of opponent' do
      expect(player2).to receive(:reduce_hit_points)
      game.attack(player2)
    end
  end
  
end
