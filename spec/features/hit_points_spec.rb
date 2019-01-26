feature 'Check score' do
  scenario "Player 2's score" do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60'
  end
end
