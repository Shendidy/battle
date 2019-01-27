require 'attack'

describe Attack do
  let(:player_2) { double :player }
  subject(:attack) { described_class.new }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      attack.attack(player_2)
    end
  end
end
