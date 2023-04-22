class CreateWheels < ActiveRecord::Migration[5.2]
  def change
    create_table :wheels do |t|
      t.text :name
      t.text :manufacturer
      t.text :size
      t.text :duro
      t.integer :price
      t.text :image

      t.timestamps
    end
  end
end
