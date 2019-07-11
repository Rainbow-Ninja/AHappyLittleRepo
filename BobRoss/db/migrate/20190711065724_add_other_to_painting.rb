class AddOtherToPainting < ActiveRecord::Migration[5.2]
  def change
    add_column :paintings, :other, :text
  end
end
