class CommentsController < ApplicationController
  def new
    @comments = Comment.all
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @user = @comment.user
    if @comment.save
      ActionCable.server.broadcast 'comment_channel', { content: @comment, comment_user: @user }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, ogiri_id: params[:ogiri_id])
  end
end
