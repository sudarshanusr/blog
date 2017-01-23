class Mailer < ActiveRecord::Base
	has_and_belongs_to_many :sent_mails
end
