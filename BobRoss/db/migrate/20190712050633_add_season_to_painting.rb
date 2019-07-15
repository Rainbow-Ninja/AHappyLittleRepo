class AddSeasonToPainting < ActiveRecord::Migration[5.2]
  def change
    add_column :paintings, :season, :integer
  end
end
