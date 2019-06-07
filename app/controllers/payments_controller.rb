class PaymentsController < ApplicationController
	def create
		bill = Bill.find(params[:bill_id])
		penalties = bill.penalties
		order = bill.order

		total = order.total + (penalties.length * 100)
		Payment.create(bill_id: bill.id, amount_paid: total)

		flash[:success] = '¡Pago realizado con éxito!'
		redirect_to request.referer
	end
end
