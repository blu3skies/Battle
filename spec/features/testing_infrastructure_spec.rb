feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Battle!'
  end

  scenario 'submitting names' do
    visit('/')
    fill_in "name1", with: 'Ellie'
    fill_in "name2", with: 'David'
    click_button 'Submit'
    expect(page).to have_content 'Ellie vs. David'
  end
end