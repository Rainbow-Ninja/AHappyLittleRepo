class RemoveTreesFromPainting < ActiveRecord::Migration[5.2]
  def change
    remove_column :paintings, :trees, :boolean
  end
end
