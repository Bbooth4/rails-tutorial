class CommentsController < ApplicationController

  def create
    blog = Blog.find(params[:comment][:blog_id])
    comment = Blog.comment.create(comment_params)

    # MainMailer.notify_question_author(answer).deliver_later

    session[:current_user_email] = comment_params[:email]
    redirect_to question
  end

  private

  def comment_params
    params.require(:comment).permit(:blog_id, :email, :body)
  end

end
