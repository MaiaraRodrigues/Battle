def sign_in_and_play
    visit('/')
      fill_in('Player1_Name', with: 'Charlie')
      fill_in('Player2_Name', with: 'Maiara')
      click_on 'Submit'
end 