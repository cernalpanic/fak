class AddColsToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :name, :string
    add_column :artists, :url, :string
  end
end
