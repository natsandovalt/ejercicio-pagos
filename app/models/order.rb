class Order < ApplicationRecord
	before_destroy :destroy_item_orders

	# Relations
	belongs_to :bill, dependent: :destroy
	# has_and_belongs_to_many :items
	has_many :item_orders
	has_many :items, through: :item_orders

	# Methods

	def total_mxn
		Money.new(self.total*100, 'MXN').format
	end

	def total_products
		total = 0
		self.item_orders.each do |item|
			total += item.quantity
		end
		total
	end

	def destroy_item_orders
		self.item_orders.destroy_all
	end
end
