feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content('Bookmark Manager')
  end

  scenario 'a user can see bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content("http://www.google.com")
  end
end
