class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.text :name
      t.text :manufacturer
      t.text :size
      t.text :weight
      t.integer :price
      t.text :image

      t.timestamps
    end
  end
end
