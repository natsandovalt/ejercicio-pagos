class CreatePenalties < ActiveRecord::Migration[5.2]
  def change
    create_table :penalties do |t|
      t.integer :bill_id

      t.timestamps
    end
  end
end
