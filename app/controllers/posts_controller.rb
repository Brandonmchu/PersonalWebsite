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

def edit
  @post = Post.find_by_id(params[:id])
end

def update
  @post = Post.find_by_id(params[:id])
  if @post.update_attributes(params[:post])
    flash[:success] = "Account settings updated"
    redirect_to current_user
  else
    render 'edit'
  end
end

def index
  @posts = Post.all.sort_by { |post| post.created_at }
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
