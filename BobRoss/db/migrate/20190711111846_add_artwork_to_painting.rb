class AddArtworkToPainting < ActiveRecord::Migration[5.2]
  def change
    add_column :paintings, :artwork, :string
  end
end
