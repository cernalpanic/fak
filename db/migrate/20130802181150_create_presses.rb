class CreatePresses < ActiveRecord::Migration
  def change
    create_table :presses do |t|
      t.string :url
      t.string :blurb
      t.integer :show_id

      t.timestamps
    end
  end
end
