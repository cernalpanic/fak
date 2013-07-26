class AddVenueIdColumnToShows < ActiveRecord::Migration
  def change
    add_column :shows, :venue_ids, :integer
  end
end
