class CreatePaintings < ActiveRecord::Migration[5.2]
  def change
    create_table :paintings do |t|
      t.boolean :trees
      t.boolean :river
      t.boolean :cabin
      t.boolean :waterfall
      t.boolean :guest
      t.boolean :animalguest
      t.string :startcolour
      t.string :shape
      t.integer :likes
      t.string :picture
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
