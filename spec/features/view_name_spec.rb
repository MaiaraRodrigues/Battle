feature 'Visible names' do
    scenario 'Players can see names on screen after entering them' do
      sign_in_and_play
      expect(page).to have_content ('Charlie')
      expect(page).to have_content ('Maiara')
    end
  end
