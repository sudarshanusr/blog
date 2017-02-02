class TagsController < ApplicationController
	def new
	@tag=Tag.new
		
	end

	def create
	@tag=Tag.new(post_params)

		if @tag.save
			flash[:success]="Successfully tag is saved"
           redirect_to mailerslist_path
		else
          flash[:error]=@tag.errors.full_messages.join(',')  
   #         flash[:error]="Post Not Saved"
			# redirect_to new_post_path
	      render :new
		end
	end

	private 
		def post_params
		params.require(:tag).permit(:name)
		end
end
