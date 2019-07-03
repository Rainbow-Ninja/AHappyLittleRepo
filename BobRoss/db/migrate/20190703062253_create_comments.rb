class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :painting, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
