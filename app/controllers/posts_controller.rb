class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end


  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "post created"
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params[:post])

      flash[:notice] = "post updated."
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end

  def destroy
    @station = Post.find(params[:id])
    @station.destroy
    redirect_to posts_path
  end

end

