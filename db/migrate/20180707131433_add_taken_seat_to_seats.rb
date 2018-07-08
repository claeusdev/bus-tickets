class AddTakenSeatToSeats < ActiveRecord::Migration[5.1]
  def change
    add_column :seats, :available, :boolean, default: true
  end
end
