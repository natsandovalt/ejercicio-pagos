class ItemOrder < ApplicationRecord

	# Relations
	belongs_to :order
	belongs_to :item
end
