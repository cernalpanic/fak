class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :city
      t.string :name
      t.string :state
      t.string :country
      t.text :description

      t.timestamps
    end
  end
end
