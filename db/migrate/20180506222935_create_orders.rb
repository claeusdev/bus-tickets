class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user
      t.references :ticket
      t.decimal :order_total

      t.timestamps
    end
  end
end
