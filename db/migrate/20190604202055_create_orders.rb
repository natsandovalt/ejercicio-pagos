class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.float :total
      t.integer :bill_id

      t.timestamps
    end
  end
end
