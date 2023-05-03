class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :address
      t.string :name
      t.integer :capacity

      t.timestamps
    end
  end
end
