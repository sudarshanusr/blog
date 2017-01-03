class Post < ActiveRecord::Base
	paginates_per 5
	has_many :comments
	validates :title,:body ,presence:true

end
