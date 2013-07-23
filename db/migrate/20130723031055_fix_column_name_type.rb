class FixColumnNameType < ActiveRecord::Migration
  def up
    rename_column :links, :type, :mediatype
  end

  def down
  end
end
