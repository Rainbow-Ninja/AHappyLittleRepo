class AddBeachToPainting < ActiveRecord::Migration[5.2]
  def change
    add_column :paintings, :beach, :boolean
  end
end
