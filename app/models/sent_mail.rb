class SentMail < ActiveRecord::Base
	has_and_belongs_to_many :mailers
end
