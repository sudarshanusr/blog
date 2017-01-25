class SentmailController < ApplicationController
	def add_text_message
	
		 params[:ids].each do |mailer|
          @mailer1=Mailer.find(mailer)
          ApplicationMailer.welcome_email(@mailer1.email,@mailer1.name).deliver
        end
  
    end
    def mail

    end

end
