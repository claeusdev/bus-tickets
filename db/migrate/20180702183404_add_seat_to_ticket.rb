class AddSeatToTicket < ActiveRecord::Migration[5.1]
  def change
    add_reference :tickets, :seat, foreign_key: true
  end
end
