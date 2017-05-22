class AddUserReferenceToItinerary < ActiveRecord::Migration[5.0]
  def change
    add_reference :itineraries, :user, foreign_key: true
  end
end
