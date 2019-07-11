require 'player'

describe Player do
    it 'returns a name of a player' do
        subject = Player.new("Tom")
        expect(subject.name).to eq "Tom"
    end

    it 'Player 2\' hit points reduced by 10' do
        player1 = Player.new("Genny")
        player2 = Player.new("Anastasiia")
        expect { player1.attack(player2) }.to change{ player2.hit_points }.by(-10)
    end

end
