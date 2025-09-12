require 'sinatra/base'
require 'postwave/client'

class App < Sinatra::Base

  POSTS_PER_PAGE = 10

  configure do
    # this loads the Postwave client once when the app boots up
    # now the client is available as `settings.postwave_client`
    set :postwave_client, Postwave::Client.new("./postwave.yaml")
  end

  get '/' do
    @render_time = time do
      @post_index = settings.postwave_client.index(limit: 3)
      @tags = settings.postwave_client.tags
    end
    erb :index
  end

  # for showing paginated lists of posts
  get '/blog/?:page?' do
    @render_time = time do
      @page = params[:page].to_i || 1
      @page_title = "Posts"
      offset = (@page - 1) * POSTS_PER_PAGE

      @posts = settings.postwave_client.posts(offset: offset, limit: POSTS_PER_PAGE)
      @pagination = settings.postwave_client.pagination(current_page: @page, per_page: POSTS_PER_PAGE)
    end
    erb :posts
  end

  # a page to show the contents of a given post, specified by the slug
  get '/posts/:slug' do
    @render_time = time do
      @post = settings.postwave_client.post(params[:slug])
      @page_title = @post.title
    end
    erb :post
  end

  # a page with all the post organized by year and month
  get '/archive' do
    @render_time = time do
      @page_title = "Blog Archive"
      @archive = settings.postwave_client.archive(by: "month")
    end
    erb :archive
  end

  # a page to show all posts for a given tag
  get '/tags/:tag' do
    @render_time = time do
      @tag = params[:tag]
      @tag_posts = settings.postwave_client.posts(tag: @tag)
      @page_title = @tag 
    end
    erb :tag
  end

  get '/links' do
    @render_time = time do
      @page_title = "Links"
    end
    erb :links
  end

  # an RSS (Atom) feed for all your posts
  get '/rss' do
    content_type 'text/xml'
    settings.postwave_client.rss
  end

  # We're just using this wrapper method to show Postwave render times in this example
  def time
    start_time = Time.now
    yield
    Time.now - start_time
  end
  

  run! if app_file == $0
end

