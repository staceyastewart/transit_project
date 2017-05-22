class Itinerary < ApplicationRecord
  has_many :stops
  belongs_to :user
end
