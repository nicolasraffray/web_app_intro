feature 'Names form' do
  scenario 'fillin a form and recieve params' do
    sign_in_and_play
    expect(page).to have_content 'name1 vs. name2'
  end
end
