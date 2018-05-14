class AddBusToTickets < ActiveRecord::Migration[5.1]
  def change
    add_reference :tickets, :bus, foreign_key: true
  end
end
