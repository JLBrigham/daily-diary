feature 'adding a diary entry' do
    scenario 'adding a new diary entry' do
      visit ('/')
      fill_in 'title', with: 'Friday'
      fill_in 'entry', with: 'Today was a good day'
      click_button 'Add to diary'
      click_link 'View Diary Entries'
      expect(page).to have_content 'Friday'
      expect(page).to have_content 'Today was a good day'
end
end