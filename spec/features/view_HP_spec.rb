feature 'Visible hit points' do
    scenario "Players can see their and their opponent's hit points" do
      sign_in_and_play
      expect(page).to have_content('10/10 HP').twice
    end
  end
