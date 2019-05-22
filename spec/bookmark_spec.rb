require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmark = Bookmark.add(url: "http://www.makersacademy.com", title: "Makers Academy")

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 1
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
      expect(bookmarks.first.title).to eq 'Makers Academy' 
      expect(bookmarks.first.id).to eq bookmark.id
    end
  end

  describe '.add' do
    it 'adds a new bookmark' do 
      bookmark = Bookmark.add(url: 'https://en.wikipedia.org/wiki/Database', title: 'Wiki Database')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'Wiki Database'
      expect(bookmark.url).to eq 'https://en.wikipedia.org/wiki/Database'
    end
  end
end
