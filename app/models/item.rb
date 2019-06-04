class Item < ApplicationRecord

	# Relations
	has_and_belongs_to_many :orders
end
