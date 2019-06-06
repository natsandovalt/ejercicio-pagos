class OrdersController < ApplicationController
	def index
		@orders = Order.all.order(created_at: :asc)
	end

	def new
		@order = Order.new
		@method = :post
		@url = orders_path
	end
end
