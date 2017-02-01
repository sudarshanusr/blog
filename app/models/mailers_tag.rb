class MailersTag < ActiveRecord::Base
  belongs_to :mailer
  belongs_to :tag
end
