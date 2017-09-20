

class ImagesController < ApplicationController
  before_action :post_id
  before_action :authenticate_user
  
  def create
    
    @image = Image.new(image_params)

    if @image.save
      redirect_to '/posts/new'
    else
      render json: { error: @image.errors.full_messages.join(',')}, status: 400
    end
  end
  
  def new
    @image = Image.new
  end
  
  private
  def image_params
    params.require(:image).permit(:post_id, {images: []})
  end
  
  def post_id
    @post = Post.all.last
  end
end
