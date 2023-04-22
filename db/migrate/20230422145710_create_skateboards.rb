class CreateSkateboards < ActiveRecord::Migration[5.2]
  def change
    create_table :skateboards do |t|
      t.integer :deck_id
      t.integer :truck_id
      t.integer :bearing_id
      t.integer :wheel_id
      t.integer :price

      t.timestamps
    end
  end
end
