class OrdersController < ApplicationController
	def index
		@orders = Order.all.order(created_at: :asc)
	end

	def new
		@order = Order.new
		@method = :post
		@url = orders_path
	end

	def create
		bill = Bill.create
		order = Order.create(total: 0, bill_id: bill.id)
		total = add_items_to_order(order.id, order_params[:items])

		order.total = total

		if order.save
			flash[:success] = 'Orden creada con éxito'
			redirect_to orders_path
		else
			flash[:danger] = 'Error al crear la orden'
			@order = Order.new
			@method = :post
			@url = orders_path
			render 'edit'
		end
	end

	def add_items_to_order(order_id, items)
		total = 0
		items.each do |item|
			price = Item.find(item[:id]).unit_price
			quantity = Integer(item[:quantity])

			total += price * quantity

			item_order = ItemOrder.new
			item_order.order_id = order_id
			item_order.item_id = item[:id]
			item_order.quantity = quantity
			item_order.save
		end
		total
	end

	private

		def order_params
			params.require(:order).permit(items: [
				:id,
				:quantity])
		end
end
