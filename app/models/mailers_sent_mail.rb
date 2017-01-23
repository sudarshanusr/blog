class MailersSentMail < ActiveRecord::Base
  belongs_to :mailer
  belongs_to :sent_mail
end
