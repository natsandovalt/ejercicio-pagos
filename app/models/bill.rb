class Bill < ApplicationRecord

	# Relations
	has_many :penalties
	has_one :payment
	has_one :order
end
