feature 'Player 1 attacks player 2' do
    scenario "Player 1 can attack player 2 and get a confirmation" do
      sign_in_and_play
      click_on 'ATTACK'
      expect(page).to have_content('Maiara: 8/10 HP')
    end
  end
