class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  #PUBLIC METHODS
  def show
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def create
    @post = Post.find(params[:post_id])
    # TODO: throw not found if not found?

    @comment = @post.comments.create(params[:comment].permit(:commenter, :body))

    # redirect_to post_path(@post)
    if @comment.save
      respond_to do |format|
        format.html { 
          flash[:notice] = "Comment created!"
          redirect_to post_path(@post) 
        }
        format.json { render 'show' }
      end
    else
      respond_to do |format|
        format.html { render 'posts/show' }
        format.json { render 'create', :status => :bad_request }
      end
    end

  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    
    respond_to do |format|
      format.html { 
        flash[:notice] = "Comment removed!"
        redirect_to post_path(@post) 
      }
      format.json { render 'destroy' }
    end
  end

end
