class PostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      respond_to do |format|
        format.html { redirect_to user_path(current_user), notice: "Your new post has been added." }
        format.js
      end
    else
      render "new"
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
    if @post.update(post_params)
      respond_to do |format|
        format.html { redirect_to user_path(current_user), notice: "Your post has been edited." }
        format.js
      end
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_path(current_user)
  end

private
  def post_params
    params.require(:post).permit(:title, :content).merge(:user_id => current_user.id)
  end
end
