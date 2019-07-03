class CreateAvatarsProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :avatars_profiles do |t|
      t.references :avatar, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
