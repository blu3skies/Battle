feature 'Attack' do
    scenario 'can attack' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Richard Attacked Ellie'
    end
end