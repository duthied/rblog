# /app/controllers/posts_controller.rb
class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

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
      flash[:notice] = "Post updated!"
      redirect_to @post
    else
      render 'edit'
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash.now[:notice] = "Post created!"
      redirect_to @post
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render 'create', :status => :bad_request }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { 
        flash[:notice] = "Post removed!"
        redirect_to posts_path 
      }
      format.json { render 'destroy' }
    end
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
