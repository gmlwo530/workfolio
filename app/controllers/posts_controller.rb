class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user
    
  def edit
     @posts = Post.all
  end

  def update
    @post.update(post_params)

    redirect_to @post
  end
  
  def new_title
    
  end
  
  def create_title
    post = Post.new(title: params[:title], image_type: params[:image_type])
    post.save
    
    redirect_to new_image_url
  end

  def new
    @posts = Post.all
    @post = Post.new
  end

  
  def create
    @post = Post.all.last
    arr_for_tag=[]
    
    if params[:ruby] == "ruby"
      arr_for_tag.push("ruby")
    end
    
    if params[:illu] == "illu"
      arr_for_tag.push("illu")
    end
    
    if params[:photo] == "photo"
      arr_for_tag.push("photo")
    end
    
    # text = params[:post][:description]
    
    # text = text.gsub(/[<p>]/,'''')
    
    # text = text.tr('/',''''
    @post.update(description: params[:post][:description], tag: arr_for_tag)

    redirect_to '/home/admin_index'
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end
end
