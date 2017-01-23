class ApplicationMailer < ActionMailer::Base
  default from: "sudarshantest1@gmail.com"
  layout 'mailer'

  def welcome_email
  	mail(to: 'sudarshantest1@gmail.com',subject: "Hi Welcome")
  end
end
