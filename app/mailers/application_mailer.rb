class ApplicationMailer < ActionMailer::Base
  default from: "sudarshantest1@gmail.com"
  layout 'mailer'

  def welcome_email(mailer,sentmail)
  	@mailer=mailer
  	@sentmail=sentmail
  	
  	mail(to: @mailer.email,subject: "Hi "+@mailer.name,body: @sentmail.message)
  end
end
