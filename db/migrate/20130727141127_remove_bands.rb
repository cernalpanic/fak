class RemoveBands < ActiveRecord::Migration
  def up
		drop_table :bands
  end

  def down
  end
end
