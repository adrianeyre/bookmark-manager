require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base
  get '/' do
    @links = Link.all
    erb (:'links/index')
  end

  get '/new' do
    erb (:'links/new')
  end

  post '/newbookmark' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
