class Order < ApplicationRecord

	# Relations
	belongs_to :bill
	has_and_belongs_to_many :items
end
