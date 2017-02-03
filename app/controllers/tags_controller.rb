class TagsController < ApplicationController
	def new
	 @tag=Tag.new
	end

	def create
		@tag=Tag.new(post_params)	
	    email_ids = params[:tag][:ids].last
	    email_ids = email_ids.gsub!(/\s/,',')  
	    email_ids=email_ids.split(',')
		@tag.mailer_ids=email_ids
		if @tag.save
			flash[:success]="Successfully tag is saved"
	       redirect_to mailerslist_path
		else
	      flash[:error]=@tag.errors.full_messages.join(',')  
	      render :new
		end
	end

	private 
		def post_params
		params.require(:tag).permit(:name)
		end
end
