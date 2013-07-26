class ChangeColumnNameInShows < ActiveRecord::Migration
  def up
    rename_column :shows, :venue_ids, :venue_id
  end

 
  def down
  end
end
