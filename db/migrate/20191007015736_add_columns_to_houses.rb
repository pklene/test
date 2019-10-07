class AddColumnsToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :pets, :string
    add_column :houses, :num_rooms, :integer
    add_column :houses, :num_bathrooms, :integer
  end
end
