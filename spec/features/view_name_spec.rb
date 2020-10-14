feature 'Visible names' do
    scenario 'Players can see names on screen after entering them' do
      visit('/')
      fill_in('Player1_Name', with: 'Charlie')
      fill_in('Player2_Name', with: 'Maiara')
      click_on 'Submit'
      expect(page).to have_content ('Charlie')
      expect(page).to have_content ('Maiara')
    end
  end
