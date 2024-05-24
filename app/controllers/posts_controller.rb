class PostsController < ApplicationController


  def index
  end

  def new
    @post = Post.new
  end

  def create
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :prefecture_id, :store, :image).merge(user_id: current_user.id)
  end

end
