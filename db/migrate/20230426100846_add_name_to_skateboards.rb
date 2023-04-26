class AddNameToSkateboards < ActiveRecord::Migration[5.2]
  def change
    add_column :skateboards, :name, :text
  end
end
