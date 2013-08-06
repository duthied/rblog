# /app/controllers/posts_controller.rb
class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_filter :authenticate_user!
  
  # check_authorization
  
  #PUBLIC METHODS
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/new
  def new
  end

  # PATCH /posts/1
  # PATCH /posts/1.json
  def edit
    @post = Post.find(params[:id])
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])
    if @post.update(params[:post].permit(:title, :text))
      redirect_to @post, notice: 'Post updated.'
    else
      render 'edit'
    end
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "Post created."
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render 'create', :status => :bad_request }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_path, notice: "Post removed." }
      format.json { render 'destroy' }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
  end

  # PRIVATE METHODS:
  private

  def post_params
    params.require(:post).permit(:title, :text)
  end

end
