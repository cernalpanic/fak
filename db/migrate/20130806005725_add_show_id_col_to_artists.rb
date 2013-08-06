class AddShowIdColToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :show_id, :integer
  end
end
