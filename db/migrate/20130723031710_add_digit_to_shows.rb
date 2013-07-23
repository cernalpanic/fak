class AddDigitToShows < ActiveRecord::Migration
  def change
    add_column :shows, :digit, :integer
  end
end
