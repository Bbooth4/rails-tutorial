class BlogsController < ApplicationController

  def show
    @blog = Blog.find(params[:id])

    @comment = @blog.answers.order(created_at: :desc)
  end

  def create
    Blog.create(blog_params)
    session[:current_user_email] = blog_params[:email]
    redirect_to root_path
  end

  private

  def blog_params
    params.require(:blog).permit(:email, :body)
  end

end
