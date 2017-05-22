class CreateStops < ActiveRecord::Migration[5.0]
  def change
    create_table :stops do |t|
      t.string :start
      t.string :end
      t.integer :rank
      t.references :itinerary, foreign_key: true

      t.timestamps
    end
  end
end
