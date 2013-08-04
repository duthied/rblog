class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  #PUBLIC METHODS

  # GET /posts/1/comments/1
  # GET /posts/1/comments/1.json
  def show
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  # POST /posts/1/comments
  # POST /posts/1/comments.json
  def create
    @post = Post.find(params[:post_id])
    # TODO: throw not found if not found?

    @comment = @post.comments.create(params[:comment].permit(:commenter, :body))

    # redirect_to post_path(@post)
    if @comment.save
      respond_to do |format|
        format.html {  redirect_to post_path(@post),  notice: "Comment created." }
        format.json { render 'show' }
      end
    else
      respond_to do |format|
        format.html { render 'posts/show' }
        format.json { render 'create', :status => :bad_request }
      end
    end

  end

  # DELETE /posts/1/comments/1
  # DELETE /posts/1/comments/1.json
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    
    respond_to do |format|
      format.html { redirect_to post_path(@post), notice: "Comment removed." }
      format.json { render 'destroy' }
    end
  end

end
