class BillsController < ApplicationController
	require 'money'

	def index
		@bills = Bill.all		
	end

	def show
		@bill = Bill.find(params[:id])
		@item_order = @bill.order.item_orders
		@penalties = @bill.penalties
	end
end
