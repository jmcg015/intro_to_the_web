feature "Attacking" do
  scenario "Player 1 attacks player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Charlotte attacked Mittens"
  end

  scenario "Player 2 attacks player 1" do
    sign_in_and_play
    attack_opponent
    click_button "Attack"
    expect(page).to have_content "Mittens attacked Charlotte"
  end

  scenario "reduce Player 2 HP by 10" do
    sign_in_and_play
    attack_opponent
    expect(page).not_to have_content "Mittens: 60HP"
    expect(page).to have_content "Mittens: 50HP"
  end

  scenario "reduce Player 1 HP by 10" do
    sign_in_and_play
    attack_opponent
    attack_opponent
    expect(page).not_to have_content "Charlotte: 60HP"
    expect(page).to have_content "Charlotte: 50HP"
  end
end
