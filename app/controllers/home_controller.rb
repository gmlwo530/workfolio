class HomeController < ApplicationController
  before_action :authenticate_user, only: :admin_index

  def index
    @posts = Post.all
  end

  def admin_index
    @posts = Post.all
  end
  
  def post_content
    @post = Post.find(params[:id])
    @tags = @post.tag
    @images = Image.where(post_id: params[:id])
  end

end
