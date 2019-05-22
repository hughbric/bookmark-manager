require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:'bookmarks/index')
  end

  get '/bookmarks/add' do
    erb(:'bookmarks/add_url')
  end

  post '/bookmarks/add' do
    Bookmark.add(url: params[:add_url], title: params[:add_title])
    redirect('/bookmarks')
  end

  run! if app_file == $0
end
