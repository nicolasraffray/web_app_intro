feature 'Switch Turns' do

  before do
    sign_in_and_play
    click_link 'Attack'
    click_button 'Go Back'
  end

  scenario 'player two attacks after player one' do
    click_link 'Attack'
    click_button 'Go Back'
    expect(page).to have_content 'name1: 50hp'
  end

  scenario 'switching turns' do
    expect(page).to have_content 'Its name2s turn'
  end 

end
