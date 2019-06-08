class BillsWorker
	include Sidekiq::Worker

	def perform(bill_id)
		bill = Bill.find(bill_id)
		if bill.payment.nil?
			Penalty.create(bill_id: bill.id)
			BillsWorker.perform_in(7.days, bill.id) # Another week
		end
	end
end