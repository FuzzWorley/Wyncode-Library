class Book < ActiveRecord::Base
	has_many :checkouts
	has_many :users, through: :checkouts

	#has_one :user???

	def checkedout?
		Checkout.exists?(book_id: id)
	end
end
