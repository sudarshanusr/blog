class CommentsController < ApplicationController

	def index
	end

	def new 
		@post=Post.find(params[:post_id])
		@comment =@post.comments.new
	end

	def create
		@post=Post.find(params[:post_id])
		@comment =@post.comments.create(comments_params)
		

		if @comment.save
			
		redirect_to @post
		 else
		 	
		 	redirect_to new_post_comment_path
		 end

	end

	def destroy
		@post=Post.find(params[:post_id])
		@comment=@post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)

	end

	private
		def comments_params
			params.require(:comment).permit(:name,:body)
		end


end
