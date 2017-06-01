class BlogsController < ApplicationController
  def index
    @blog = Blogs.all

    # @comment = @blog.comments.order(created_at: :desc)
  end

  def show
    
  end

  def create
    Blog.create(blog_params)
    session[:current_user_email] = blog_params[:email]
    redirect_to root_path
  end

  private

  def blog_params
    params.require(:blogs).permit(:email, :body)
  end

end
