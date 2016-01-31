class User < ActiveRecord::Base
	has_many :recipes
	has_many :microposts, dependent: :destroy

	def feed
		Micropost.where("user_id = ?", id)
	end

	private
end
