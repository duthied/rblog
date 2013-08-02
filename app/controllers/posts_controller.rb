# /app/controllers/posts_controller.rb
class PostsController < ApplicationController
  
  #PUBLIC METHODS
  def index
    @posts = Post.all
  end

  def new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params[:post].permit(:title, :text))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def create
    # render text: params[:post].inspect
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end

  # PRIVATE METHODS:
  private

  def post_params
    params.require(:post).permit(:title, :text)
  end

end
