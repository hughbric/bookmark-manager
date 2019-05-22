feature 'add bookmark' do
  scenario 'to the list' do
    visit '/bookmarks'
    click_button 'Add Bookmark'
    fill_in 'add_url', with: 'https://en.wikipedia.org/wiki/Database'
    fill_in 'add_title', with: 'Wiki Database'
    click_button 'Submit'
    expect(page).to have_link('Wiki Database', href: 'https://en.wikipedia.org/wiki/Database')
  end
end
