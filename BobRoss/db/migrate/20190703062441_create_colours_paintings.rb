class CreateColoursPaintings < ActiveRecord::Migration[5.2]
  def change
    create_table :colours_paintings do |t|
      t.references :colour, foreign_key: true
      t.references :painting, foreign_key: true

      t.timestamps
    end
  end
end
