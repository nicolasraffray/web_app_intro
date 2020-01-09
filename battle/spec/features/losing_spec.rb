feature 'Losing' do
  scenario 'player2 looses' do
    sign_in_and_play
    attacking_to_default_player_death
    
    expect(page).to have_content "name1 wins"
  end
end
