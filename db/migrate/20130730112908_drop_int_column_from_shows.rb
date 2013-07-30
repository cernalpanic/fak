class DropIntColumnFromShows < ActiveRecord::Migration
  def up
    remove_column :shows, :digit
  end

  def down
  end
end
