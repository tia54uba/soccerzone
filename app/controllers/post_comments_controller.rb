class PostCommentsController < ApplicationController
  def new
    @post_comment = PostComment.new
    @post = Post.find(params[:post_id])
  end

  def create
    post = Post.find(params[:post_id])
    comment = current_user.post_comments.new(post_comments_params)
    comment.post_id = post.id
    if comment.save
      flash[:notice] = "コメントを投稿しました!"
      redirect_to post_path(post)
    else
      @post_comment = PostComment.new
      @post = Post.find(params[:post_id])
      render :new
    end
  end

  def destroy
    PostComment.find_by(id: params[:id], post_id: params[:post_id]).destroy
    redirect_to request.referer
  end

  private

  def post_comments_params
    params.require(:post_comment).permit(:comment)
  end
end
