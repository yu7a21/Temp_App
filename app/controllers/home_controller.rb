class HomeController < ApplicationController
  def index
    @post = Post.all.order(created_at: :desc)
  end

  def create
    @post = Post.new(content:params[:content])
    @post.save
    redirect_to("/")
  end
end
