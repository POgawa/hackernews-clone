class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def new
    @vote = Vote.new
  end

  def create
    @posts = Post.all
    @vote = Vote.new(params[:vote])
    if @vote.save
      flash[:notice] = "Line created"
      redirect_to posts_path
    else
      render 'posts#index'
    end
  end
end
