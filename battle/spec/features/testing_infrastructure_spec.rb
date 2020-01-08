feature 'Names form' do
  scenario 'fillin a form and recieve params' do
    visit('/')

    fill_in 'player1', :with => 'name1'
    fill_in 'player2', :with => 'name2'
    click_button 'Submit'

    expect(page).to have_content 'name1 vs. name2'
  end
end
