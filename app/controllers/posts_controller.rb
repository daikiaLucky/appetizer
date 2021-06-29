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
end
