class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.belongs_to :route, foreign_key: true
      t.decimal :price
      t.datetime :departure_date
      t.time :departure_time

      t.timestamps
    end
  end
end
