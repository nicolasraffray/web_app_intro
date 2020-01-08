feature 'Attacks player 2' do

  before(:each) do
    sign_in_and_play
    click_link 'Attack'
  end
  scenario 'attacks player2 and gets confirmation' do
    expect(page).to have_content "name1 attacked name2"
  end

  scenario 'attacks player2' do
    click_link 'Go Back'
    expect(page).to have_content 'name2: 50hp'
  end
end
