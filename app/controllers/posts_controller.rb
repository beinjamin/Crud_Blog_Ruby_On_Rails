class PostsController < ApplicationController
  

  before_action :set_post, only: [:update, :edit, :show, :destroy]


  def index
    session[:user_id] = 4
    @posts = Post.all

    respond_to do |format|
      format.html 
      format.json {render json: @posts}

    
    end
  end


   def show 

   respond_to do |format|
      format.html 
      format.json {render json: @post}
   end 

   end

   def edit 
    
   end

  

   def update 
  
   flash[:notice] = "Article modifier avec success"

   
   if  @post.update(post_params)
    redirect_to posts_path
   else 
    render 'edit'
   end

  end

  def new 
    @post = Post.new
  end

  

  def  create
    flash[:notice] = "Article Cree avec success"
    post = Post.create(post_params)
    redirect_to post_path(post.id) 
  end

  def destroy
    flash[:notice] = "Article Supprimer  avec success"
    @post.destroy
    redirect_to post_path 
  end



  private

  def post_params 
    params.require(:post).permit(:name,:content, :slug)
  end

  def set_post
    @post = Post.find(params[:id])
  end


end
