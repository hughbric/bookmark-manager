feature 'add bookmark' do
  scenario 'to the list' do
    visit '/bookmarks'
    click_button 'Add Bookmark'
    fill_in 'add_url', with: 'https://en.wikipedia.org/wiki/Database'
    click_button 'Submit'
    expect(page).to have_content('https://en.wikipedia.org/wiki/Database')
  end
end
