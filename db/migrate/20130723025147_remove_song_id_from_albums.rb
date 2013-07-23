class RemoveSongIdFromAlbums < ActiveRecord::Migration
  def up
    remove_column :albums, :song_id
  end

  def down
    add_column :albums, :song_id, :integer
  end
end
