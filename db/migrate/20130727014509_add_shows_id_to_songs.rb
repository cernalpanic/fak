class AddShowsIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :show_id, :integer
  end
end
