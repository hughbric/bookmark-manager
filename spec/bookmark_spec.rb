require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")

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
      bookmark = Bookmark.create(url: 'https://en.wikipedia.org/wiki/Database', title: 'Wiki Database')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'Wiki Database'
      expect(bookmark.url).to eq 'https://en.wikipedia.org/wiki/Database'
    end
  end
  
  describe '.delete' do
    it 'deletes the given bookmark' do
      bookmark = Bookmark.create(url: 'https://www.makersacademy.com', title: 'Makers Academy')

      Bookmark.delete(id: bookmark.id)

      expect(Bookmark.all.length).to eq(0)
    end
  end

  describe '.update' do
    it 'updates the bookmark with the given data' do
      bookmark = Bookmark.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')
      updated_bookmark = Bookmark.update(id: bookmark.id, url: 'http://www.snakersacademy.com', title: 'Snakers Academy')
  
      expect(updated_bookmark).to be_a Bookmark
      expect(updated_bookmark.id).to eq bookmark.id
      expect(updated_bookmark.title).to eq 'Snakers Academy'
      expect(updated_bookmark.url).to eq 'http://www.snakersacademy.com'
    end
  end
end
