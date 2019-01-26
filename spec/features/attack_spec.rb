feature 'Attack' do
  scenario 'player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mittens: 50'
  end
end
