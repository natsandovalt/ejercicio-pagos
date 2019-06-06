class AddPrimaryKeyToOrdersItems < ActiveRecord::Migration[5.2]
  def change
  	rename_table 'items_orders', 'item_orders'
  	add_column :item_orders, :id, :primary_key
  end
end
