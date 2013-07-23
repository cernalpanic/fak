class AddColumnToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :song_id, :integer
  end
end
