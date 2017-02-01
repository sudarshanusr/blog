class MailersController < ApplicationController

	def new
		@mailer=Mailer.new
	end

	def edit
		@mailer=Mailer.find(params[:id])
	end

	def update
	  @mailer=Mailer.find(params[:id])

	  	if @mailer.update(mailer_params)
	  	  redirect_to mailerslist_path
			else
				redirect_to new_mailer_path
		end
	end

	def create
	@mailer=Mailer.new(mailer_params)

		if @mailer.save
			flash[:success]="Successfully mailer is saved"
           redirect_to mailerslist_path
		else
          flash[:error]=@mailer.errors.full_messages.join(',')  
	      render :new
		end
	end

	private 
		def mailer_params
		params.require(:mailer).permit(:name,:email,:mobile)
		end
end
