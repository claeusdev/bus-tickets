class RemoveToFromRoutes < ActiveRecord::Migration[5.1]
  def change
    remove_column :routes, :to
    remove_column :routes, :from

    add_column :routes, :origin, :string
    add_column :routes, :destination, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
