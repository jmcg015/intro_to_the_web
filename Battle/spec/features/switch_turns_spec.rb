feature "Switching turns" do
  scenario "It is Player 1's turn" do
    sign_in_and_play
    expect(page).to have_content "Charlotte's turn"
  end

  scenario "Switch to Player 2 after Player 1 attacks" do
    sign_in_and_play
    attack_opponent
    expect(page).not_to have_content "Charlotte's turn"
    expect(page).to have_content "Mittens's turn"
  end
end
