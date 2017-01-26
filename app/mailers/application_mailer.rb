class ApplicationMailer < ActionMailer::Base
  default from: "sudarshantest1@gmail.com"
  layout 'mailer'

  def welcome_email(mailer)
  	@mailer=mailer
  	
  	mail(to: @mailer.email,subject: "Hi "+@mailer.name,body: @mailer.mobile)
  end
end
