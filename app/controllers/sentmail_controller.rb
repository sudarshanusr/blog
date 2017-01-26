class SentmailController < ApplicationController

	
	def addtextmessage

	
		  params[:ids].each do |mailer|
            @mailer1=Mailer.find(mailer)
            
            sentmail=SentMail.new
            sentmail.message="bbbb"
            sentmail.save
            
            @mailer1.sent_mail_ids+=[sentmail.id]
            @mailer1.save
            
ApplicationMailer.welcome_email(@mailer1).deliver
          end


    end
    def mail

    	#params[:ids].each do |mailer|
         # @mailer1=Mailer.find(mailer)
         # ApplicationMailer.welcome_email(@mailer1.email,@mailer1.name).deliver
         #end

    end

end
