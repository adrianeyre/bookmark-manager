class BookmarkManager < Sinatra::Base
  get '/links' do
    if session[:user_id]
      @links = Link.all
      erb :'links/index'
    else
      erb :'sessions/new'
    end
  end

  post '/links' do
    link = Link.create(url: params[:url], title: params[:title])
    params[:tags].split.each do |tag|
      link.tags << Tag.first_or_create(name: tag)
    end
    link.save
    redirect to('/links')
  end

  get '/links/new' do
    erb :'links/new'
  end
end
