feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Battle!'
  end

  scenario 'submitting names' do
    visit('/')
    fill_in "player_1_name", with: 'Ellie'
    fill_in "player_2_name", with: 'David'
    click_button 'Submit'
    expect(page).to have_content 'Ellie vs. David'
  end

  scenario 'viewing player 2 hit points' do
    visit('/')
    fill_in "player_1_name", with: 'Ellie'
    fill_in "player_2_name", with: 'David'
    click_button 'Submit'
    expect(page).to have_content 'Hit Points: 10'
  end
end