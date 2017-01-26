class SentmailController < ApplicationController

	
	def addtextmessage

			#creating sentmail 
	        sentmail=SentMail.new
	        sentmail.message="bbbb"
	        sentmail.save
		  #iterating the params ids to sent mails individually
		  params[:ids].each do |mailer|
            @mailer1=Mailer.find(mailer)
            @mailer1.sent_mail_ids+=[sentmail.id]
            @mailer1.save
            #triggering mailer
			ApplicationMailer.welcome_email(@mailer1).deliver
			flash[:success]="Email Sent Successfully"
          end
    end


    def mail


    end

end
