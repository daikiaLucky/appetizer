class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    redirect_to root_path if @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :genre_id, :image).merge(user_id: current_user.id)
  end
  
end
