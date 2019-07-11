class AddMountainsToPainting < ActiveRecord::Migration[5.2]
  def change
    add_column :paintings, :mountains, :boolean
  end
end
