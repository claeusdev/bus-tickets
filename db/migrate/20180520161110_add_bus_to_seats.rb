class AddBusToSeats < ActiveRecord::Migration[5.1]
  def change
    add_reference :seats, :bus, foreign_key: true
  end
end
