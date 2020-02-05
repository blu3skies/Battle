feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Battle!'
  end

  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Ellie vs. Richard'
  end

  scenario 'viewing player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Hit Points: 10HP'
  end

end