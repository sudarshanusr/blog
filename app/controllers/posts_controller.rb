class PostsController < ApplicationController
	
	def index
		@posts=Post.all.order('created_at DESC')
		ApplicationMailer.welcome_email().deliver

	end

	def new
		@post=Post.new
	end

	def edit
		@post=Post.find(params[:id])
	end

	def update
	  @post=Post.find(params[:id])

	  	if @post.update(post_params)
	  	  redirect_to posts_path
			else
				redirect_to new_post_path
		end
	end

	def create
	@post=Post.new(post_params)

		if @post.save
			flash[:success]="Successfully post is saved"
           redirect_to posts_path
		else
          flash[:error]=@post.errors.full_messages.join(',')  
   #         flash[:error]="Post Not Saved"
			# redirect_to new_post_path
	      render :new
		end
	end

	def show
		@post=Post.find(params[:id])
	end
	
	def destroy
		@post=Post.find(params[:id])
		@post.destroy
		redirect_to posts_path

	end
	def mailerlist
		@mailers=Mailer.all.order('created_at DESC')

	end
	
	
	private 
		def post_params
		params.require(:post).permit(:title,:body)
		end



end
