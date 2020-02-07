describe Player do    
    subject(:ellie){ Player.new('Ellie') }
    subject(:richard){ Player.new('Richard') }

    describe '#name' do
        it 'should reveal its name' do
            expect(ellie.name).to eq 'Ellie'
        end
    end

    describe '#hit_points' do
        it 'returns the hit points' do
            expect(ellie.hit_points).to eq described_class::DEFAULT_HIT_POINTS
        end
    end

    describe '#receive_damage' do
        it 'reduces the player hit points' do
            expect { ellie.receive_damage }.to change { ellie.hit_points }.by(-10)
        end
    end
end