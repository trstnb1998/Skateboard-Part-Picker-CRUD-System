class CreateBearings < ActiveRecord::Migration[5.2]
  def change
    create_table :bearings do |t|
      t.text :name
      t.text :manufacturer
      t.text :material
      t.integer :price
      t.text :image

      t.timestamps
    end
  end
end
