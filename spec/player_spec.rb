describe Player do
    it 'should reveal its name' do
        player = Player.new("Ellie")
        expect(player.name).to eq("Ellie")
    end

    it 'should reduce other player HP by 10' do
        player = Player.new("Ellie")
        expect(player.attacked).to eq 50
    end
end