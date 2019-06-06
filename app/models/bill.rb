class Bill < ApplicationRecord
	before_save :set_expiration_date

	# Relations
	has_many :penalties, dependent: :destroy
	has_one :payment, dependent: :destroy
	has_one :order

	# Methods

	def set_expiration_date
		self.expiration_date = Time.now + 60
	end
end
