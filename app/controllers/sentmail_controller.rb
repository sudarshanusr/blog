class SentmailController < ApplicationController
	def addtextmessage
		@@ids=params[:ids]
        render :js => "window.location = '/mail'"
    end

    def mail
    @sentmail=SentMail.new
    end

    def email
    	
    	sentmail=SentMail.new
        sentmail.message=params[:message]
        sentmail.save
	   #iterating the params ids to sent mails individually
	   @@ids.each do |mailer|
	        @mailer1=Mailer.find(mailer)
	        @mailer1.sent_mail_ids+=[sentmail.id]
	        @mailer1.save
	        #triggering mailer
			ApplicationMailer.welcome_email(@mailer1,sentmail).deliver
			flash[:success]="Email Sent Successfully"
      end

      render :js => "window.location = '/'"

    end


end
