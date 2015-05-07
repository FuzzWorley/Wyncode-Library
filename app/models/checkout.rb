class Checkout < ActiveRecord::Base
	belongs_to :book
	belongs_to :user

  validates :book_id, uniqueness: true
end
