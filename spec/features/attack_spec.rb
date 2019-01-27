feature 'Attack' do
  scenario 'player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mittens: 50'
  end

  scenario 'player 2 looses' do
    sign_in_and_play
    11.times { click_button 'Attack' }
    expect(page).to have_content 'Mittens: 0'
  end

  scenario 'player 2 looses' do
    sign_in_and_play
    11.times { click_button 'Attack' }
    expect(page).to have_content 'Mittens lost the game. Start a new one?'
  end

  scenario 'player 2 looses' do
    sign_in_and_play
    11.times { click_button 'Attack' }
    expect(page).to have_button 'New game?'
  end
end
