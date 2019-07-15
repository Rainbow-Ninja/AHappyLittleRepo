class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.text :address
      t.references :painting, foreign_key: true

      t.timestamps
    end
  end
end
