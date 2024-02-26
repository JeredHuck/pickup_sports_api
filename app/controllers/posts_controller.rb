class PostsController < ApplicationController
  before_action :set_posts, only: [:update, :destroy, :show]
  # before_action :authenticate_request

  def index 
    posts = Post.all 
    render json: posts, status: :ok
  end

  def show
    render json: @post, status: :ok
  end

  def create
    posts = @currecnt_user.posts.new(posts_params)

    if post.save
      render json: post, status: :created
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  def update
    if @post.update(post_params)
      render json: @post, status: :ok
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @post.destroy
      render json: nil, status: :ok
    else 
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private 
  def set_posts 
    @post = Post.find(params[:id])
  end

  def posts_params
    params.permit(:content)
  end
end
