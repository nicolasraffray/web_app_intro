def sign_in_and_play
  visit('/')
  fill_in 'player1', :with => 'name1'
  fill_in 'player2', :with => 'name2'
  click_button 'Submit'
end

def attacking_to_default_player_death
  11.times do
    click_link 'Attack'
    click_button 'Go Back'
  end
end
