class AddColumnToPayments < ActiveRecord::Migration[5.2]
  def change
  	add_column :payments, :amount_paid, :float
  end
end
