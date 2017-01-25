class ApplicationMailer < ActionMailer::Base
  default from: "sudarshantest1@gmail.com"
  layout 'mailer'

  def welcome_email(email,name)
  	@email=email
  	@name=name
  	mail(to: @email,subject: "Hi "+@name)
  end
end
