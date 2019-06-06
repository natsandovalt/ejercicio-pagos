class Order < ApplicationRecord

	# Relations
	belongs_to :bill
	# has_and_belongs_to_many :items
	has_many :item_orders
	has_many :items, through: :item_orders
end
