class RemoveSeatsFromBus < ActiveRecord::Migration[5.1]
  def change
    remove_column :buses, :seats, :integer
    add_column :buses, :num_seats, :integer
  end
end
