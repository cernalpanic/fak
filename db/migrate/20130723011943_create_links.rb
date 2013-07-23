class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :type
      t.string :start
      t.string :end
      t.string :url

      t.timestamps
    end
  end
end
