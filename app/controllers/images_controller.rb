

class ImagesController < ApplicationController
  before_action :post_id
  before_action :authenticate_user
  
  def create
    
    @image = Image.new(image: params[:file], post_id: params[:post_id])

    if @image.save
      render json: { message: "success", fileID: @image.id }, status: 200
    else
      render json: { error: @image.errors.full_messages.join(',')}, status: 400
    end
  end
  
  def new
    @images = Image.all
    @image = Image.new
  end
  
  private
  def image_params
    params.require(:image).permit(:image)
  end
  
  def post_id
    @post = Post.all.last
  end
end
