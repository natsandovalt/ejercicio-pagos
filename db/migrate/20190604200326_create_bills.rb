class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.date :expiration_date

      t.timestamps
    end
  end
end
