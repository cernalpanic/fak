class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.date :date
      t.text :description
      t.text :img

      t.timestamps
    end
  end
end
