feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
    expect(page).to have_content 'Current player: Dave'
    click_button 'Attack'
    expect(page).to have_content 'Current player: Mittens'
  end
end
