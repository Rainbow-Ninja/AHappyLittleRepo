class RemovePictureFromPaintings < ActiveRecord::Migration[5.2]
  def change
    remove_column :paintings, :picture, :string
  end
end
