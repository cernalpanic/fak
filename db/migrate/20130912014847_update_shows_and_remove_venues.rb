class UpdateShowsAndRemoveVenues < ActiveRecord::Migration
  def up
    remove_column :shows, :venue_id
    add_column :shows, :city, :string
    add_column :shows, :country, :string
    add_column :shows, :venue, :string
    drop_table :venues
  end

  def down
  end
end
