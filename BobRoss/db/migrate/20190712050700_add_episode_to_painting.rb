class AddEpisodeToPainting < ActiveRecord::Migration[5.2]
  def change
    add_column :paintings, :episode, :integer
  end
end
