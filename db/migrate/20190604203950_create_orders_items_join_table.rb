class CreateOrdersItemsJoinTable < ActiveRecord::Migration[5.2]
  def change
  	create_join_table :orders, :items do |t|
  		t.index :order_id
  		t.index :item_id
  		t.integer :quantity
  	end
  end
end
