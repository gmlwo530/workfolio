class HomeController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def admin_index
    @posts = Post.all
  end

  def edit

  end

  def update
    @post.update(post_params)

    redirect_to @post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save!

    redirect_to '/home/admin_index'
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :description, :image)
    end
end
