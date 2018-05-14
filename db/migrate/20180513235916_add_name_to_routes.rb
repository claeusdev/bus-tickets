class AddNameToRoutes < ActiveRecord::Migration[5.1]
  def change
    add_column :routes, :name, :string
  end
end
