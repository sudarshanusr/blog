class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  paginates_per 5
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
