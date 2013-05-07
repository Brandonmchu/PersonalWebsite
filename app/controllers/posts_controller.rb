class PostsController < ApplicationController

def new
  @post = Post.new
end

def create
  @post = Post.new(params[:post])
  if @post.save
    flash[:success] = "#{@post.title} successfully saved"
    redirect_to user_path(current_user)
  else
    flash[:error] = "failed"
    render 'new'
  end
end

def show
  @post = Post.find_by_id(params[:id])
  render :layout => 'public'
end

def index
  @posts = Post.all
  render :layout => 'public'
end

def destroy
  @post = Post.find(params[:id])
  @title = @post.title
  if @post.destroy
    flash[:success] = "successfully destroyed #{@title}"
    redirect_to user_path(current_user)
  else
    flash[:error] = "could not destroy"
    redirect_to user_path(current_user)
  end
end

end
