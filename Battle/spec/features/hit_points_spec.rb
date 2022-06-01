feature "View hit points" do
  scenario "see Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content "Mittens: 60HP"
  end

  scenario "see Player 1 hit points" do
    sign_in_and_play
    expect(page).to have_content "Charlotte: 60HP"
  end

  scenario "Player 2's HP reaches 0" do
    sign_in_and_play
    11.times { attack_opponent }
    expect(page).to have_content "Mittens loses"
  end
end
