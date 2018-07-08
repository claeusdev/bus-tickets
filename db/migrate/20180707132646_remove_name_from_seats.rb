class RemoveNameFromSeats < ActiveRecord::Migration[5.1]
  def change
    remove_column :seats, :name, :string
    add_column :seats, :seat_number, :integer
  end
end
