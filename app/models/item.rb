class Item < ApplicationRecord
	require 'money'

	# Relations
	# has_and_belongs_to_many :orders
	has_many :item_orders
	has_many :orders, through: :item_orders

	# Methods

	def description_price
		"#{self.description} - #{Money.new(self.unit_price*100, 'MXN').format}"
	end
end
