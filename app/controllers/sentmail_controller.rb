class SentmailController < ApplicationController
	def addtextmessage
		@@ids=params[:ids]

        render :js => "window.location = '/mail'"
    end

    def mail
    @sentmail=SentMail.new
    end
     
    def email 
        tag_mailer_id=Array.new
        @@ids.each do |f|
            tag=Tag.find(f)
            tag.mailers.each do |mailer|
            tag_mailer_id.push(mailer.id)
            end
        end
        tag_mailer_id = tag_mailer_id.uniq
        sentmail=SentMail.new
        sentmail.message=params[:message]
        sentmail.save
       #iterating the params ids to sent mails individually
       tag_mailer_id.each do |mailer|
            @mailer1=Mailer.find(mailer)
            @mailer1.sent_mail_ids+=[sentmail.id]
            @mailer1.save
            #triggering mailer
            ApplicationMailer.welcome_email(@mailer1,sentmail).deliver
            flash[:success]="Email Sent Successfully"
        end
      render :js => "window.location = '/'"
    end

    def createmailer
    @mailer1=Mailer.new
    response.should _render_template(:file => "#{Rails.root}/views/sentmail/createmailer.html")
    end
end
