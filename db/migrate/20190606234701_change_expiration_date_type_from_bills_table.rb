class ChangeExpirationDateTypeFromBillsTable < ActiveRecord::Migration[5.2]
  def change
  	remove_column :bills, :expiration_date
  	add_column :bills, :expiration_date, :datetime
  end
end
