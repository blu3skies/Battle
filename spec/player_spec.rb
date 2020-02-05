describe Player do
    it 'should reveal its name' do
        player = Player.new("Ellie")
        expect(player.name).to eq("Ellie")
    end
end