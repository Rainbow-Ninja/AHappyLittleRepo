class CreateColours < ActiveRecord::Migration[5.2]
  def change
    create_table :colours do |t|
      t.boolean :alizerancrimson
      t.boolean :brightred
      t.boolean :cadmiumyellow
      t.boolean :darksienna
      t.boolean :indianyellow
      t.boolean :midnightblue
      t.boolean :mountainmix
      t.boolean :phthaloblue
      t.boolean :phthalogreen
      t.boolean :prussianblue
      t.boolean :sapgreen
      t.boolean :titaniumwhite
      t.boolean :vandykebrown
      t.boolean :yellowochre

      t.timestamps
    end
  end
end
