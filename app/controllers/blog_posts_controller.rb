class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.order("created_at DESC")
  end

  def show
    @blog_post = get_blog_post(params[:id])
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to blog_posts_path, notice: 'This blog post was created successfully.'
    else
      render 'new'
    end
  end

  def edit
    @blog_post = get_blog_post(params[:id])
  end

  def update
    @blog_post = get_blog_post(params[:id])
    if @blog_post.update(blog_post_params)
      redirect_to blog_posts_path, notice: 'This blog post was updated successfully.'
    else
      render 'edit'
    end
  end

  def destroy
    @blog_post = get_blog_post(params[:id])
    @blog_post.destroy
    flash[:notice] = 'This blog post was destroyed successfully.'
    redirect_to root_path
  end

private

  def get_blog_post(id)
    BlogPost.find(id)
  end

  def blog_post_params
    params.require(:blog_post).permit(:title, :content)
  end
end
