class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.text :name
      t.text :manufacturer
      t.text :size
      t.integer :price
      t.text :image

      t.timestamps
    end
  end
end
