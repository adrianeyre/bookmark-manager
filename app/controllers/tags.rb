class BookmarkManager < Sinatra::Base
  get '/tags/:search' do
    session[:search] = params[:search]
    search
  end

  get '/tags' do
    erb :'tags/index'
  end

  post '/tags' do
    session[:search] = params[:search]
    search
  end

  def search
    tag = Tag.first(name: session[:search].downcase)
    @links = tag ? tag.links : []
    erb :'links/index'
  end
end
