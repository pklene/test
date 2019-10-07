class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.text :description
      t.integer :monthly_rent

      t.timestamps
    end
  end
end
