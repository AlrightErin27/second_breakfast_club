class CommentsController < ApplicationController
  # You might want to skip CSRF verification if you're not using it,
  # but it's recommended to keep it if possible.
  skip_before_action :verify_authenticity_token, only: [:create, :destroy]

  def create
    # Find the parent post (forum post) using the nested parameter :forum_id
    @post = Post.find(params[:forum_id])
    # Build a comment associated with the post
    @comment = @post.comments.build(comment_params)
    
    if @comment.save
      redirect_to forum_path(@post), notice: "Comment was successfully posted."
    else
      redirect_to forum_path(@post), alert: "There was an error posting your comment."
    end
  end

  def destroy
    @post = Post.find(params[:forum_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to forum_path(@post), notice: "Comment was successfully deleted."
  end

  private

  def comment_params
    # Permit only the required parameters for a comment.
    params.require(:comment).permit(:body, :author, :posted_at)
  end
end
